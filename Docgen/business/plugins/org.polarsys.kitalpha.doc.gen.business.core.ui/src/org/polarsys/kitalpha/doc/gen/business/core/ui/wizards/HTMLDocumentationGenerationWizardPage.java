/*******************************************************************************
 * Copyright (c) 2014 Thales Global Services S.A.S.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *  
 * Contributors:
 *   Thales Global Services S.A.S - initial API and implementation
 ******************************************************************************/
package org.polarsys.kitalpha.doc.gen.business.core.ui.wizards;

import java.util.Iterator;
import java.util.Map;

import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Path;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.edit.ui.action.LoadResourceAction.LoadResourceDialog;
import org.eclipse.jface.dialogs.IDialogPage;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.wizard.WizardPage;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.dialogs.ContainerSelectionDialog;
import org.polarsys.kitalpha.doc.gen.business.core.ui.wizards.string.Messages;


/**
 * The "New" wizard page allows setting the container for the new file as well
 * as the file name. The page will only accept file name without the extension
 * OR with the extension that matches the expected one (mpe).
 */

public class HTMLDocumentationGenerationWizardPage extends WizardPage {
	
	private static final String STATUS_4 = Messages.HTMLDocumentationGenerationWizardPage_status_4;
	
	private static final String STATUS_3 = Messages.HTMLDocumentationGenerationWizardPage_status_3;

	private static final String STATUS_2 = Messages.HTMLDocumentationGenerationWizardPage_status_2;

	private static final String STATUS_1 = Messages.HTMLDocumentationGenerationWizardPage_stauts_1;

	private static final String MESSAGE = Messages.HTMLDocumentationGenerationWizardPage_message;

	private static final String OUTPUT_FOLDER_TEXT = Messages.HTMLDocumentationGenerationWizardPage_output_folder_text;

	private static final String BROWSE_TEXT = Messages.HTMLDocumentationGenerationWizardPage_browse_text;

	private static final String INPUT_MODEL_TEXT = Messages.HTMLDocumentationGenerationWizardPage_input_model_text;

	private static final String DESCRIPTION = Messages.HTMLDocumentationGenerationWizardPage_description;

	private static final String TITLE = Messages.HTMLDocumentationGenerationWizardPage_title;

	private Text containerText;

	private Text modelURIText;

	private ISelection selection;

	private Map<String, URI> launcherUris;

	private Combo combo;

	/**
	 * Constructor for SampleNewWizardPage.
	 * 
	 * @param pageName
	 */
	public HTMLDocumentationGenerationWizardPage(ISelection selection) {
		super("wizardPage"); //$NON-NLS-1$
		setTitle(TITLE);
		setDescription(DESCRIPTION);
		this.selection = selection;
	}

	/**
	 * @see IDialogPage#createControl(Composite)
	 */
	public void createControl(Composite parent) {
		Composite container = new Composite(parent, SWT.NULL);
		GridLayout layout = new GridLayout();
		container.setLayout(layout);
		layout.numColumns = 3;
		layout.verticalSpacing = 9;
		GridData gd = new GridData(GridData.FILL_HORIZONTAL);
		Label label = new Label(container, SWT.NULL);
		label.setText(INPUT_MODEL_TEXT);

		modelURIText = new Text(container, SWT.BORDER | SWT.SINGLE);
		gd = new GridData(GridData.FILL_HORIZONTAL);
		modelURIText.setLayoutData(gd);
		modelURIText.addModifyListener(new ModifyListener() {
			public void modifyText(ModifyEvent e) {
				dialogChanged();
			}
		});

		Button button = new Button(container, SWT.PUSH);
		button.setText(BROWSE_TEXT);
		button.addSelectionListener(new SelectionAdapter() {
			public void widgetSelected(SelectionEvent e) {
				modelSelection();
			}

		});

		label = new Label(container, SWT.NULL);
		label.setText(OUTPUT_FOLDER_TEXT);

		containerText = new Text(container, SWT.BORDER | SWT.SINGLE);

		containerText.setLayoutData(gd);
		containerText.addModifyListener(new ModifyListener() {
			public void modifyText(ModifyEvent e) {
				dialogChanged();
			}
		});

		button = new Button(container, SWT.PUSH);
		button.setText(BROWSE_TEXT);
		button.addSelectionListener(new SelectionAdapter() {
			public void widgetSelected(SelectionEvent e) {
				outputFolderSelection();
			}
		});

		if (launcherUris.size() > 1) {
			label = new Label(container, SWT.NONE);
			label.setText("Launcher:");
			combo = new Combo(container, SWT.BORDER);
			GridData comboGridData = new GridData(GridData.FILL_HORIZONTAL);
			comboGridData.horizontalSpan = 2;
			combo.setLayoutData(comboGridData);
			for (String name : launcherUris.keySet()) {
				int index = combo.getItemCount();
				if (name
						.equals(HTMLDocumentationGenerationWizard.DEFAULT_LAUNCHER_LABEL)) {
					index = 0;
				}
				combo.add(name, index);
			}

			combo.select(0);

		}
		initialize();
		dialogChanged();
		setControl(container);
	}

	/**
	 * Tests if the current workbench selection is a suitable container to use.
	 */

	private void initialize() {
		if (selection != null && selection.isEmpty() == false
				&& selection instanceof IStructuredSelection) {
			IStructuredSelection ssel = (IStructuredSelection) selection;
			// if (ssel.size() > 1)
			// return;
			Object obj = ssel.getFirstElement();
			if (obj instanceof IResource) {
				IContainer container;
				if (obj instanceof IContainer)
					container = (IContainer) obj;
				else
					container = ((IResource) obj).getParent();
				containerText.setText(container.getFullPath().toString());
			}
			for (Object object : ssel.toArray()) {
				if (object instanceof IFile) {
					IFile modelFile = (IFile) object;
					URI uri = URI.createPlatformResourceURI(modelFile
							.getFullPath().toString(), true);
					this.modelURIText.setText(this.modelURIText.getText()
							+ " " + uri.toString()); //$NON-NLS-1$
				}
			}
		}

		// modelURIText.setText("new_file.mpe");
	}

	private void modelSelection() {
		LoadResourceDialog dialog = new LoadResourceDialog(PlatformUI
				.getWorkbench().getActiveWorkbenchWindow().getShell());
		if (dialog.open() == LoadResourceDialog.OK) {
			String uriText = dialog.getURIText();
			if (uriText != null) {
				// List<URI> urIs = dialog.getURIs();
				// urIs.addAll(this.modelURIList);
				// this.modelURIList = urIs;
				modelURIText.setText(uriText);
			}
		}
	}

	/**
	 * Uses the standard container selection dialog to choose the new value for
	 * the container field.
	 */

	private void outputFolderSelection() {
		ContainerSelectionDialog dialog = new ContainerSelectionDialog(
				getShell(), ResourcesPlugin.getWorkspace().getRoot(), false,
				MESSAGE);
		if (dialog.open() == ContainerSelectionDialog.OK) {
			Object[] result = dialog.getResult();
			if (result.length == 1) {
				containerText.setText(((Path) result[0]).toString());
			}
		}
	}

	/**
	 * Ensures that both text fields are set.
	 */

	private void dialogChanged() {
		IResource container = ResourcesPlugin.getWorkspace().getRoot()
				.findMember(new Path(getContainerName()));
		// String fileName = getFileName();
		if(!(container instanceof IFolder)) {
			updateStatus(STATUS_4);
			return;
		}
		if (getContainerName().length() == 0) {
			updateStatus(STATUS_1);
			return;
		}
		if (container == null
				|| (container.getType() & (IResource.PROJECT | IResource.FOLDER)) == 0) {
			updateStatus(STATUS_2);
			return;
		}
		if (!container.isAccessible()) {
			updateStatus(STATUS_3);
			return;
		}
		// if (fileName.length() == 0) {
		// updateStatus("File name must be specified");
		// return;
		// }
		// if (fileName.replace('\\', '/').indexOf('/', 1) > 0) {
		// updateStatus("File name must be valid");
		// return;
		// }
		// int dotLoc = fileName.lastIndexOf('.');
		// if (dotLoc != -1) {
		// String ext = fileName.substring(dotLoc + 1);
		// if (ext.equalsIgnoreCase("mpe") == false) {
		// updateStatus("File extension must be \"mpe\"");
		// return;
		// }
		// }
		updateStatus(null);
	}

	private void updateStatus(String message) {
		setErrorMessage(message);
		setPageComplete(message == null);
	}

	public String getContainerName() {
		return containerText.getText();
	}

	public String getModelURI() {
		return modelURIText.getText();
	}

	public void setLauncherUris(Map<String, URI> launcherUris) {
		this.launcherUris = launcherUris;
	}

	public String getSelectedLauncher() {
		if (combo != null) {
			return combo.getText();
		} else {
			Iterator<String> iterator = launcherUris.keySet().iterator();
			if (iterator.hasNext())
				return iterator.next();
			else
				return "";
		}
	}

	// public List<URI> getModelURIList() {
	// return modelURIList;
	// }
}