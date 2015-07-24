/*******************************************************************************
 * Copyright (c) 2014 Thales Global Services S.A.S.
 * All rights reserved. This program and the accompanying materials are made 
 * available under the terms of the Eclipse Public License v1.0 which accompanies
 * this distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *    Thales Global Services S.A.S - initial API and implementation
 ******************************************************************************/

//Generated with EGF 1.3.0.v20150507-0831
package org.polarsys.kitalpha.ad.viewpoint.dsl.generation.explorer.contextual.javaclasses;

import java.util.*;
import org.eclipse.egf.model.pattern.*;
import org.eclipse.egf.pattern.execution.*;
import org.eclipse.egf.pattern.query.*;
import org.polarsys.kitalpha.ad.viewpoint.dsl.as.model.vpdesc.Association_Types;
import org.polarsys.kitalpha.ad.viewpoint.dsl.as.model.vpdesc.AbstractAssociation;
import org.polarsys.kitalpha.ad.viewpoint.dsl.as.model.vpdesc.ExternalClassAssociation;
import org.polarsys.kitalpha.ad.viewpoint.dsl.generation.explorer.contextual.category.ContextualExplorerCategoryCompliance;
import org.polarsys.kitalpha.ad.viewpoint.dsl.generation.explorer.contextual.util.ClassUtils;

public class OwnedExternalElementJavaClass
		extends
		org.polarsys.kitalpha.ad.viewpoint.dsl.generation.explorer.contextual.common.AbstractAssociationJavaClass {
	protected static String nl;

	public static synchronized OwnedExternalElementJavaClass create(
			String lineSeparator) {
		nl = lineSeparator;
		OwnedExternalElementJavaClass result = new OwnedExternalElementJavaClass();
		nl = null;
		return result;
	}

	public final String NL = nl == null ? (System.getProperties()
			.getProperty("line.separator")) : nl;
	protected final String TEXT_1 = "\t"
			+ NL
			+ "\t/**"
			+ NL
			+ "    * <!-- begin-user-doc -->"
			+ NL
			+ "    * <!-- end-user-doc -->"
			+ NL
			+ "    * @param object_p: The model element for which the Contextual Explorer extension is generated"
			+ NL
			+ "    * @return List of object to display in the parent category"
			+ NL + "    * @generated" + NL + "    */" + NL
			+ "\tpublic List<Object> compute(Object object_p) {" + NL
			+ "\t\tList<Object> result = new ArrayList<Object>();" + NL
			+ "\t\t";
	protected final String TEXT_2 = " object = (";
	protected final String TEXT_3 = ") object_p;" + NL + "\t\t";
	protected final String TEXT_4 = NL;
	protected final String TEXT_5 = " \t\t\t\t" + NL
			+ "\t\t\t\tfor (EObject eObject : object.";
	protected final String TEXT_6 = "())" + NL
			+ "\t\t\t\t\tresult.add(eObject);";
	protected final String TEXT_7 = NL + "\t\t\t\tif (object.";
	protected final String TEXT_8 = "() != null)\t" + NL
			+ "\t\t\t\t\tresult.add(object.";
	protected final String TEXT_9 = "());\t";
	protected final String TEXT_10 = "\t\t\t\t";
	protected final String TEXT_11 = "\t\t" + NL + "\t\t" + NL
			+ "\t\treturn result;" + NL + "\t}" + NL + "" + NL + "\t";
	protected final String TEXT_12 = NL + NL + "import ";
	protected final String TEXT_13 = ";" + NL;
	protected final String TEXT_14 = NL;
	protected final String TEXT_15 = NL;
	protected final String TEXT_16 = NL;

	public OwnedExternalElementJavaClass() {
		//Here is the constructor
		StringBuffer stringBuffer = new StringBuffer();

		// add initialisation of the pattern variables (declaration has been already done).

	}

	public String generate(Object argument) throws Exception {
		final StringBuffer stringBuffer = new StringBuffer();

		InternalPatternContext ctx = (InternalPatternContext) argument;
		Map<String, String> queryCtx = null;
		IQuery.ParameterDescription paramDesc = null;
		Node.Container currentNode = ctx.getNode();

		List<Object> parameterList = null;
		//this pattern can only be called by another (i.e. it's not an entry point in execution)

		for (Object parameterParameter : parameterList) {

			this.parameter = (org.polarsys.kitalpha.ad.viewpoint.dsl.as.model.vpdesc.Class) parameterParameter;

			if (preCondition(ctx)) {
				ctx.setNode(new Node.Container(currentNode, getClass()));
				orchestration(ctx);
			}

		}
		ctx.setNode(currentNode);
		if (ctx.useReporter()) {
			ctx.getReporter().executionFinished(
					OutputManager.computeExecutionOutput(ctx), ctx);
		}

		stringBuffer.append(TEXT_15);
		stringBuffer.append(TEXT_16);
		return stringBuffer.toString();
	}

	public String orchestration(PatternContext ctx) throws Exception {
		InternalPatternContext ictx = (InternalPatternContext) ctx;

		super.orchestration(new SuperOrchestrationContext(ictx));

		if (ictx.useReporter()) {
			Map<String, Object> parameterValues = new HashMap<String, Object>();
			parameterValues.put("parameter", this.parameter);
			String outputWithCallBack = OutputManager.computeLoopOutput(ictx);
			String loop = OutputManager.computeLoopOutputWithoutCallback(ictx);
			ictx.getReporter().loopFinished(loop, outputWithCallBack, ictx,
					parameterValues);
		}
		return null;
	}

	protected org.polarsys.kitalpha.ad.viewpoint.dsl.as.model.vpdesc.Class parameter = null;

	public void set_parameter(
			org.polarsys.kitalpha.ad.viewpoint.dsl.as.model.vpdesc.Class object) {
		this.parameter = object;
	}

	public Map<String, Object> getParameters() {
		final Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("parameter", this.parameter);
		return parameters;
	}

	protected void method_genClassMethods(final StringBuffer stringBuffer,
			final PatternContext ctx) throws Exception {

		stringBuffer.append(TEXT_1);
		stringBuffer.append(vpClassName);
		stringBuffer.append(TEXT_2);
		stringBuffer.append(vpClassName);
		stringBuffer.append(TEXT_3);
		for (AbstractAssociation abstractAssociation : parameter
				.getVP_Classes_Associations()) {
			if (abstractAssociation instanceof ExternalClassAssociation
					&& abstractAssociation.getType() == Association_Types.CONTAINMENT) {
				String vpAssociationGetterName = ClassUtils.INSTANCE
						.getAssociationAccesssorName(abstractAssociation);
				stringBuffer.append(TEXT_4);
				if (ClassUtils.isAssociationMultiple(abstractAssociation)) {
					stringBuffer.append(TEXT_5);
					stringBuffer.append(vpAssociationGetterName);
					stringBuffer.append(TEXT_6);
				} else {
					stringBuffer.append(TEXT_7);
					stringBuffer.append(vpAssociationGetterName);
					stringBuffer.append(TEXT_8);
					stringBuffer.append(vpAssociationGetterName);
					stringBuffer.append(TEXT_9);
				}
			}
			stringBuffer.append(TEXT_10);
		}
		stringBuffer.append(TEXT_11);
		InternalPatternContext ictx = (InternalPatternContext) ctx;
		new Node.DataLeaf(ictx.getNode(), getClass(), "genClassMethods",
				stringBuffer.toString());
	}

	protected void method_genSemanticImoprt(final StringBuffer stringBuffer,
			final PatternContext ctx) throws Exception {

		stringBuffer.append(TEXT_12);
		stringBuffer.append(vpClassInterfaceFullyQualifiedName);
		stringBuffer.append(TEXT_13);
		InternalPatternContext ictx = (InternalPatternContext) ctx;
		new Node.DataLeaf(ictx.getNode(), getClass(), "genSemanticImoprt",
				stringBuffer.toString());
	}

	protected void method_setJavaClassName(final StringBuffer stringBuffer,
			final PatternContext ctx) throws Exception {

		javaClassName = "OwnedExternalElementQuery";
		stringBuffer.append(TEXT_14);
		InternalPatternContext ictx = (InternalPatternContext) ctx;
		new Node.DataLeaf(ictx.getNode(), getClass(), "setJavaClassName",
				stringBuffer.toString());
	}

	protected void method_setConcernedVPClass(final StringBuffer stringBuffer,
			final PatternContext ctx) throws Exception {

		vpClass = parameter;
		InternalPatternContext ictx = (InternalPatternContext) ctx;
		new Node.DataLeaf(ictx.getNode(), getClass(), "setConcernedVPClass",
				stringBuffer.toString());
	}

	public boolean preCondition(PatternContext ctx) throws Exception {
		return ContextualExplorerCategoryCompliance
				.ownedExternalCategoryCompliance(parameter);

	}
}