/*******************************************************************************
 * Copyright (c) 2018  Thales Global Services S.A.S.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 *  Contributors:
 *  Thales Global Services S.A.S - initial API and implementation
 *******************************************************************************/
package org.polarsys.kitalpha.massactions.core.table.layer;

import java.util.Collection;

import org.eclipse.emf.ecore.EObject;

/**
 * The root interface for a MassAction component. The component is responsible
 * of updating its internal state whenever the data changed.
 * 
 *  @author Sandu Postaru
 *  
 */
public interface IMAComponent {

	/**
	 * This method informs the component that the data changed (elements were
	 * added or removed). This allows the component to modify its internal state
	 * accordingly.
	 * 
	 * @param newData
	 *            the new data that should now serve as the backing data model.
	 */
	void dataChanged(Collection<EObject> newData);
	
	void dispose();
}
