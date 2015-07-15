/*
* generated by Xtext
*/
grammar InternalActivityexplorer;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.polarsys.kitalpha.ad.viewpoint.dsl.cs.text.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.polarsys.kitalpha.ad.viewpoint.dsl.cs.text.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.polarsys.kitalpha.ad.viewpoint.dsl.cs.text.services.ActivityexplorerGrammarAccess;

}

@parser::members {

 	private ActivityexplorerGrammarAccess grammarAccess;
 	
    public InternalActivityexplorerParser(TokenStream input, ActivityexplorerGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "ViewpointActivityExplorer";	
   	}
   	
   	@Override
   	protected ActivityexplorerGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleViewpointActivityExplorer
entryRuleViewpointActivityExplorer returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getViewpointActivityExplorerRule()); }
	 iv_ruleViewpointActivityExplorer=ruleViewpointActivityExplorer 
	 { $current=$iv_ruleViewpointActivityExplorer.current; } 
	 EOF 
;

// Rule ViewpointActivityExplorer
ruleViewpointActivityExplorer returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(

(
	{ 
	  getUnorderedGroupHelper().enter(grammarAccess.getViewpointActivityExplorerAccess().getUnorderedGroup());
	}
	(
		(

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getViewpointActivityExplorerAccess().getUnorderedGroup(), 0)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getViewpointActivityExplorerAccess().getUnorderedGroup(), 0);
	 				}
					({true}?=>(	otherlv_1='Activity' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getViewpointActivityExplorerAccess().getActivityKeyword_0_0());
    }
	otherlv_2='Explorer' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getViewpointActivityExplorerAccess().getExplorerKeyword_0_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getViewpointActivityExplorerAccess().getNameFQNParserRuleCall_0_2_0()); 
	    }
		lv_name_3_0=ruleFQN		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getViewpointActivityExplorerRule());
	        }
       		set(
       			$current, 
       			"name",
        		lv_name_3_0, 
        		"FQN");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_4='{' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getViewpointActivityExplorerAccess().getLeftCurlyBracketKeyword_0_3());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getViewpointActivityExplorerAccess().getOwnedNewPagesPagesParserRuleCall_0_4_0()); 
	    }
		lv_ownedNewPages_5_0=rulePages		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getViewpointActivityExplorerRule());
	        }
       		set(
       			$current, 
       			"ownedNewPages",
        		lv_ownedNewPages_5_0, 
        		"Pages");
	        afterParserOrEnumRuleCall();
	    }

)
)?))
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getViewpointActivityExplorerAccess().getUnorderedGroup());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getViewpointActivityExplorerAccess().getUnorderedGroup(), 1)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getViewpointActivityExplorerAccess().getUnorderedGroup(), 1);
	 				}
					({true}?=>(
(
		{ 
	        newCompositeNode(grammarAccess.getViewpointActivityExplorerAccess().getOwnedSectionsExtensionSectionsParserRuleCall_1_0()); 
	    }
		lv_ownedSectionsExtension_6_0=ruleSections		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getViewpointActivityExplorerRule());
	        }
       		set(
       			$current, 
       			"ownedSectionsExtension",
        		lv_ownedSectionsExtension_6_0, 
        		"Sections");
	        afterParserOrEnumRuleCall();
	    }

)
))
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getViewpointActivityExplorerAccess().getUnorderedGroup());
	 				}
 				)
			)  |

			( 
				{getUnorderedGroupHelper().canSelect(grammarAccess.getViewpointActivityExplorerAccess().getUnorderedGroup(), 2)}?=>(
					{ 
	 				  getUnorderedGroupHelper().select(grammarAccess.getViewpointActivityExplorerAccess().getUnorderedGroup(), 2);
	 				}
					({true}?=>((
(
		{ 
	        newCompositeNode(grammarAccess.getViewpointActivityExplorerAccess().getOwnedActivitiesExtensionActivitiesParserRuleCall_2_0_0()); 
	    }
		lv_ownedActivitiesExtension_7_0=ruleActivities		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getViewpointActivityExplorerRule());
	        }
       		set(
       			$current, 
       			"ownedActivitiesExtension",
        		lv_ownedActivitiesExtension_7_0, 
        		"Activities");
	        afterParserOrEnumRuleCall();
	    }

)
)?	otherlv_8='}' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getViewpointActivityExplorerAccess().getRightCurlyBracketKeyword_2_1());
    }
))
					{ 
	 				  getUnorderedGroupHelper().returnFromSelection(grammarAccess.getViewpointActivityExplorerAccess().getUnorderedGroup());
	 				}
 				)
			)  

		)+
	  	{getUnorderedGroupHelper().canLeave(grammarAccess.getViewpointActivityExplorerAccess().getUnorderedGroup())}?	
	)
)
	{ 
	  getUnorderedGroupHelper().leave(grammarAccess.getViewpointActivityExplorerAccess().getUnorderedGroup());
	}

)
;





// Entry rule entryRulePages
entryRulePages returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPagesRule()); }
	 iv_rulePages=rulePages 
	 { $current=$iv_rulePages.current; } 
	 EOF 
;

// Rule Pages
rulePages returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getPagesAccess().getPagesAction_0(),
            $current);
    }
)	otherlv_1='Pages' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getPagesAccess().getPagesKeyword_1());
    }
	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getPagesAccess().getLeftCurlyBracketKeyword_2());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getPagesAccess().getOwnedActivityExplorerPagesPageParserRuleCall_3_0()); 
	    }
		lv_ownedActivityExplorerPages_3_0=rulePage		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPagesRule());
	        }
       		add(
       			$current, 
       			"ownedActivityExplorerPages",
        		lv_ownedActivityExplorerPages_3_0, 
        		"Page");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getPagesAccess().getOwnedActivityExplorerPagesPageParserRuleCall_4_0()); 
	    }
		lv_ownedActivityExplorerPages_4_0=rulePage		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPagesRule());
	        }
       		add(
       			$current, 
       			"ownedActivityExplorerPages",
        		lv_ownedActivityExplorerPages_4_0, 
        		"Page");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_5='}' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getPagesAccess().getRightCurlyBracketKeyword_5());
    }
)
;





// Entry rule entryRuleSections
entryRuleSections returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getSectionsRule()); }
	 iv_ruleSections=ruleSections 
	 { $current=$iv_ruleSections.current; } 
	 EOF 
;

// Rule Sections
ruleSections returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getSectionsAccess().getSectionsAction_0(),
            $current);
    }
)	otherlv_1='Sections' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getSectionsAccess().getSectionsKeyword_1());
    }
	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getSectionsAccess().getLeftCurlyBracketKeyword_2());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getSectionsAccess().getOwnedSectionsExtensionsSectionExtensionParserRuleCall_3_0()); 
	    }
		lv_ownedSectionsExtensions_3_0=ruleSectionExtension		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSectionsRule());
	        }
       		add(
       			$current, 
       			"ownedSectionsExtensions",
        		lv_ownedSectionsExtensions_3_0, 
        		"SectionExtension");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getSectionsAccess().getOwnedSectionsExtensionsSectionExtensionParserRuleCall_4_0()); 
	    }
		lv_ownedSectionsExtensions_4_0=ruleSectionExtension		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSectionsRule());
	        }
       		add(
       			$current, 
       			"ownedSectionsExtensions",
        		lv_ownedSectionsExtensions_4_0, 
        		"SectionExtension");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_5='}' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getSectionsAccess().getRightCurlyBracketKeyword_5());
    }
)
;





// Entry rule entryRuleActivities
entryRuleActivities returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getActivitiesRule()); }
	 iv_ruleActivities=ruleActivities 
	 { $current=$iv_ruleActivities.current; } 
	 EOF 
;

// Rule Activities
ruleActivities returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getActivitiesAccess().getActivitiesAction_0(),
            $current);
    }
)	otherlv_1='Activities' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getActivitiesAccess().getActivitiesKeyword_1());
    }
	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getActivitiesAccess().getLeftCurlyBracketKeyword_2());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getActivitiesAccess().getOwnedActivitiesExtensionsActivityExtensionParserRuleCall_3_0()); 
	    }
		lv_ownedActivitiesExtensions_3_0=ruleActivityExtension		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getActivitiesRule());
	        }
       		add(
       			$current, 
       			"ownedActivitiesExtensions",
        		lv_ownedActivitiesExtensions_3_0, 
        		"ActivityExtension");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getActivitiesAccess().getOwnedActivitiesExtensionsActivityExtensionParserRuleCall_4_0()); 
	    }
		lv_ownedActivitiesExtensions_4_0=ruleActivityExtension		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getActivitiesRule());
	        }
       		add(
       			$current, 
       			"ownedActivitiesExtensions",
        		lv_ownedActivitiesExtensions_4_0, 
        		"ActivityExtension");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_5='}' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getActivitiesAccess().getRightCurlyBracketKeyword_5());
    }
)
;





// Entry rule entryRulePage
entryRulePage returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPageRule()); }
	 iv_rulePage=rulePage 
	 { $current=$iv_rulePage.current; } 
	 EOF 
;

// Rule Page
rulePage returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getPageAccess().getPageAction_0(),
            $current);
    }
)	otherlv_1='Page' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getPageAccess().getPageKeyword_1());
    }
(
(
		lv_name_2_0=RULE_STRING
		{
			newLeafNode(lv_name_2_0, grammarAccess.getPageAccess().getNameSTRINGTerminalRuleCall_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPageRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_2_0, 
        		"STRING");
	    }

)
)	otherlv_3='{' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getPageAccess().getLeftCurlyBracketKeyword_3());
    }
(	otherlv_4='model' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getPageAccess().getModelKeyword_4_0());
    }
	otherlv_5='type' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getPageAccess().getTypeKeyword_4_1());
    }
(
(
		lv_modelType_6_0=RULE_STRING
		{
			newLeafNode(lv_modelType_6_0, grammarAccess.getPageAccess().getModelTypeSTRINGTerminalRuleCall_4_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPageRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"modelType",
        		lv_modelType_6_0, 
        		"STRING");
	    }

)
))?(	otherlv_7='id' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getPageAccess().getIdKeyword_5_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getPageAccess().getActivityExplorerItemIDFQNParserRuleCall_5_1_0()); 
	    }
		lv_activityExplorerItemID_8_0=ruleFQN		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPageRule());
	        }
       		set(
       			$current, 
       			"activityExplorerItemID",
        		lv_activityExplorerItemID_8_0, 
        		"FQN");
	        afterParserOrEnumRuleCall();
	    }

)
))?	otherlv_9='index' 
    {
    	newLeafNode(otherlv_9, grammarAccess.getPageAccess().getIndexKeyword_6());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getPageAccess().getIndexEIntParserRuleCall_7_0()); 
	    }
		lv_index_10_0=ruleEInt		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPageRule());
	        }
       		set(
       			$current, 
       			"index",
        		lv_index_10_0, 
        		"EInt");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getPageAccess().getOwnedOverviewOverviewParserRuleCall_8_0()); 
	    }
		lv_ownedOverview_11_0=ruleOverview		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPageRule());
	        }
       		set(
       			$current, 
       			"ownedOverview",
        		lv_ownedOverview_11_0, 
        		"Overview");
	        afterParserOrEnumRuleCall();
	    }

)
)?(	otherlv_12='header' 
    {
    	newLeafNode(otherlv_12, grammarAccess.getPageAccess().getHeaderKeyword_9_0());
    }
	otherlv_13='{' 
    {
    	newLeafNode(otherlv_13, grammarAccess.getPageAccess().getLeftCurlyBracketKeyword_9_1());
    }
(	otherlv_14='image' 
    {
    	newLeafNode(otherlv_14, grammarAccess.getPageAccess().getImageKeyword_9_2_0());
    }
	otherlv_15='on' 
    {
    	newLeafNode(otherlv_15, grammarAccess.getPageAccess().getOnKeyword_9_2_1());
    }
	otherlv_16=':' 
    {
    	newLeafNode(otherlv_16, grammarAccess.getPageAccess().getColonKeyword_9_2_2());
    }
(
(
		lv_imagePathOn_17_0=RULE_STRING
		{
			newLeafNode(lv_imagePathOn_17_0, grammarAccess.getPageAccess().getImagePathOnSTRINGTerminalRuleCall_9_2_3_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPageRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"imagePathOn",
        		lv_imagePathOn_17_0, 
        		"STRING");
	    }

)
))?(	otherlv_18='image' 
    {
    	newLeafNode(otherlv_18, grammarAccess.getPageAccess().getImageKeyword_9_3_0());
    }
	otherlv_19='off' 
    {
    	newLeafNode(otherlv_19, grammarAccess.getPageAccess().getOffKeyword_9_3_1());
    }
	otherlv_20=':' 
    {
    	newLeafNode(otherlv_20, grammarAccess.getPageAccess().getColonKeyword_9_3_2());
    }
(
(
		lv_imagePathOff_21_0=RULE_STRING
		{
			newLeafNode(lv_imagePathOff_21_0, grammarAccess.getPageAccess().getImagePathOffSTRINGTerminalRuleCall_9_3_3_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPageRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"imagePathOff",
        		lv_imagePathOff_21_0, 
        		"STRING");
	    }

)
))?	otherlv_22='}' 
    {
    	newLeafNode(otherlv_22, grammarAccess.getPageAccess().getRightCurlyBracketKeyword_9_4());
    }
)?(	otherlv_23='tab' 
    {
    	newLeafNode(otherlv_23, grammarAccess.getPageAccess().getTabKeyword_10_0());
    }
	otherlv_24='name' 
    {
    	newLeafNode(otherlv_24, grammarAccess.getPageAccess().getNameKeyword_10_1());
    }
(
(
		lv_tabName_25_0=RULE_STRING
		{
			newLeafNode(lv_tabName_25_0, grammarAccess.getPageAccess().getTabNameSTRINGTerminalRuleCall_10_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPageRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"tabName",
        		lv_tabName_25_0, 
        		"STRING");
	    }

)
))?(	otherlv_26='predicated' 
    {
    	newLeafNode(otherlv_26, grammarAccess.getPageAccess().getPredicatedKeyword_11_0());
    }
	otherlv_27=':' 
    {
    	newLeafNode(otherlv_27, grammarAccess.getPageAccess().getColonKeyword_11_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getPageAccess().getHasPredicateEBooleanParserRuleCall_11_2_0()); 
	    }
		lv_hasPredicate_28_0=ruleEBoolean		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPageRule());
	        }
       		set(
       			$current, 
       			"hasPredicate",
        		lv_hasPredicate_28_0, 
        		"EBoolean");
	        afterParserOrEnumRuleCall();
	    }

)
))?(	otherlv_29='show' 
    {
    	newLeafNode(otherlv_29, grammarAccess.getPageAccess().getShowKeyword_12_0());
    }
	otherlv_30='viewer' 
    {
    	newLeafNode(otherlv_30, grammarAccess.getPageAccess().getViewerKeyword_12_1());
    }
	otherlv_31=':' 
    {
    	newLeafNode(otherlv_31, grammarAccess.getPageAccess().getColonKeyword_12_2());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getPageAccess().getShowViewerEBooleanParserRuleCall_12_3_0()); 
	    }
		lv_showViewer_32_0=ruleEBoolean		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPageRule());
	        }
       		set(
       			$current, 
       			"showViewer",
        		lv_showViewer_32_0, 
        		"EBoolean");
	        afterParserOrEnumRuleCall();
	    }

)
))?	otherlv_33='}' 
    {
    	newLeafNode(otherlv_33, grammarAccess.getPageAccess().getRightCurlyBracketKeyword_13());
    }
)
;





// Entry rule entryRuleOverview
entryRuleOverview returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getOverviewRule()); }
	 iv_ruleOverview=ruleOverview 
	 { $current=$iv_ruleOverview.current; } 
	 EOF 
;

// Rule Overview
ruleOverview returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getOverviewAccess().getOverviewAction_0(),
            $current);
    }
)	otherlv_1='Overview' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getOverviewAccess().getOverviewKeyword_1());
    }
	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getOverviewAccess().getLeftCurlyBracketKeyword_2());
    }
(	otherlv_3='description' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getOverviewAccess().getDescriptionKeyword_3_0());
    }
(
(
		lv_description_4_0=RULE_STRING
		{
			newLeafNode(lv_description_4_0, grammarAccess.getOverviewAccess().getDescriptionSTRINGTerminalRuleCall_3_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getOverviewRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"description",
        		lv_description_4_0, 
        		"STRING");
	    }

)
))?(	otherlv_5='image' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getOverviewAccess().getImageKeyword_4_0());
    }
	otherlv_6='on' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getOverviewAccess().getOnKeyword_4_1());
    }
	otherlv_7=':' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getOverviewAccess().getColonKeyword_4_2());
    }
(
(
		lv_imagePathOn_8_0=RULE_STRING
		{
			newLeafNode(lv_imagePathOn_8_0, grammarAccess.getOverviewAccess().getImagePathOnSTRINGTerminalRuleCall_4_3_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getOverviewRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"imagePathOn",
        		lv_imagePathOn_8_0, 
        		"STRING");
	    }

)
))?(	otherlv_9='image' 
    {
    	newLeafNode(otherlv_9, grammarAccess.getOverviewAccess().getImageKeyword_5_0());
    }
	otherlv_10='off' 
    {
    	newLeafNode(otherlv_10, grammarAccess.getOverviewAccess().getOffKeyword_5_1());
    }
	otherlv_11=':' 
    {
    	newLeafNode(otherlv_11, grammarAccess.getOverviewAccess().getColonKeyword_5_2());
    }
(
(
		lv_imagePathOff_12_0=RULE_STRING
		{
			newLeafNode(lv_imagePathOff_12_0, grammarAccess.getOverviewAccess().getImagePathOffSTRINGTerminalRuleCall_5_3_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getOverviewRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"imagePathOff",
        		lv_imagePathOff_12_0, 
        		"STRING");
	    }

)
))?	otherlv_13='}' 
    {
    	newLeafNode(otherlv_13, grammarAccess.getOverviewAccess().getRightCurlyBracketKeyword_6());
    }
)
;





// Entry rule entryRuleSectionExtension
entryRuleSectionExtension returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getSectionExtensionRule()); }
	 iv_ruleSectionExtension=ruleSectionExtension 
	 { $current=$iv_ruleSectionExtension.current; } 
	 EOF 
;

// Rule SectionExtension
ruleSectionExtension returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getSectionExtensionAccess().getSectionExtensionAction_0(),
            $current);
    }
)	otherlv_1='section' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getSectionExtensionAccess().getSectionKeyword_1());
    }
(
(
		lv_name_2_0=RULE_STRING
		{
			newLeafNode(lv_name_2_0, grammarAccess.getSectionExtensionAccess().getNameSTRINGTerminalRuleCall_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getSectionExtensionRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_2_0, 
        		"STRING");
	    }

)
)	otherlv_3='{' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getSectionExtensionAccess().getLeftCurlyBracketKeyword_3());
    }
(	otherlv_4='id' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getSectionExtensionAccess().getIdKeyword_4_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getSectionExtensionAccess().getActivityExplorerItemIDFQNParserRuleCall_4_1_0()); 
	    }
		lv_activityExplorerItemID_5_0=ruleFQN		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSectionExtensionRule());
	        }
       		set(
       			$current, 
       			"activityExplorerItemID",
        		lv_activityExplorerItemID_5_0, 
        		"FQN");
	        afterParserOrEnumRuleCall();
	    }

)
))?	otherlv_6='extended' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getSectionExtensionAccess().getExtendedKeyword_5());
    }
	otherlv_7='page' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getSectionExtensionAccess().getPageKeyword_6());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getSectionExtensionAccess().getExtendedPageIDFQNParserRuleCall_7_0()); 
	    }
		lv_extendedPageID_8_0=ruleFQN		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSectionExtensionRule());
	        }
       		set(
       			$current, 
       			"extendedPageID",
        		lv_extendedPageID_8_0, 
        		"FQN");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_9='index' 
    {
    	newLeafNode(otherlv_9, grammarAccess.getSectionExtensionAccess().getIndexKeyword_8());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getSectionExtensionAccess().getIndexEIntParserRuleCall_9_0()); 
	    }
		lv_index_10_0=ruleEInt		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSectionExtensionRule());
	        }
       		set(
       			$current, 
       			"index",
        		lv_index_10_0, 
        		"EInt");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_11='filtering' 
    {
    	newLeafNode(otherlv_11, grammarAccess.getSectionExtensionAccess().getFilteringKeyword_10_0());
    }
	otherlv_12=':' 
    {
    	newLeafNode(otherlv_12, grammarAccess.getSectionExtensionAccess().getColonKeyword_10_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getSectionExtensionAccess().getFilteringEBooleanParserRuleCall_10_2_0()); 
	    }
		lv_filtering_13_0=ruleEBoolean		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSectionExtensionRule());
	        }
       		set(
       			$current, 
       			"filtering",
        		lv_filtering_13_0, 
        		"EBoolean");
	        afterParserOrEnumRuleCall();
	    }

)
))?(	otherlv_14='expanded' 
    {
    	newLeafNode(otherlv_14, grammarAccess.getSectionExtensionAccess().getExpandedKeyword_11_0());
    }
	otherlv_15=':' 
    {
    	newLeafNode(otherlv_15, grammarAccess.getSectionExtensionAccess().getColonKeyword_11_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getSectionExtensionAccess().getExpandedEBooleanParserRuleCall_11_2_0()); 
	    }
		lv_expanded_16_0=ruleEBoolean		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSectionExtensionRule());
	        }
       		set(
       			$current, 
       			"expanded",
        		lv_expanded_16_0, 
        		"EBoolean");
	        afterParserOrEnumRuleCall();
	    }

)
))?	otherlv_17='}' 
    {
    	newLeafNode(otherlv_17, grammarAccess.getSectionExtensionAccess().getRightCurlyBracketKeyword_12());
    }
)
;





// Entry rule entryRuleActivityExtension
entryRuleActivityExtension returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getActivityExtensionRule()); }
	 iv_ruleActivityExtension=ruleActivityExtension 
	 { $current=$iv_ruleActivityExtension.current; } 
	 EOF 
;

// Rule ActivityExtension
ruleActivityExtension returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getActivityExtensionAccess().getActivityExtensionAction_0(),
            $current);
    }
)	otherlv_1='activity' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getActivityExtensionAccess().getActivityKeyword_1());
    }
(
(
		lv_name_2_0=RULE_STRING
		{
			newLeafNode(lv_name_2_0, grammarAccess.getActivityExtensionAccess().getNameSTRINGTerminalRuleCall_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getActivityExtensionRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_2_0, 
        		"STRING");
	    }

)
)	otherlv_3='{' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getActivityExtensionAccess().getLeftCurlyBracketKeyword_3());
    }
(	otherlv_4='id' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getActivityExtensionAccess().getIdKeyword_4_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getActivityExtensionAccess().getActivityExplorerItemIDFQNParserRuleCall_4_1_0()); 
	    }
		lv_activityExplorerItemID_5_0=ruleFQN		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getActivityExtensionRule());
	        }
       		set(
       			$current, 
       			"activityExplorerItemID",
        		lv_activityExplorerItemID_5_0, 
        		"FQN");
	        afterParserOrEnumRuleCall();
	    }

)
))?	otherlv_6='extended' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getActivityExtensionAccess().getExtendedKeyword_5());
    }
	otherlv_7='section' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getActivityExtensionAccess().getSectionKeyword_6());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getActivityExtensionAccess().getExtendedSectionIDFQNParserRuleCall_7_0()); 
	    }
		lv_extendedSectionID_8_0=ruleFQN		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getActivityExtensionRule());
	        }
       		set(
       			$current, 
       			"extendedSectionID",
        		lv_extendedSectionID_8_0, 
        		"FQN");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_9='index' 
    {
    	newLeafNode(otherlv_9, grammarAccess.getActivityExtensionAccess().getIndexKeyword_8());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getActivityExtensionAccess().getIndexEIntParserRuleCall_9_0()); 
	    }
		lv_index_10_0=ruleEInt		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getActivityExtensionRule());
	        }
       		set(
       			$current, 
       			"index",
        		lv_index_10_0, 
        		"EInt");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_11='predicated' 
    {
    	newLeafNode(otherlv_11, grammarAccess.getActivityExtensionAccess().getPredicatedKeyword_10_0());
    }
	otherlv_12=':' 
    {
    	newLeafNode(otherlv_12, grammarAccess.getActivityExtensionAccess().getColonKeyword_10_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getActivityExtensionAccess().getHasPredicateEBooleanParserRuleCall_10_2_0()); 
	    }
		lv_hasPredicate_13_0=ruleEBoolean		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getActivityExtensionRule());
	        }
       		set(
       			$current, 
       			"hasPredicate",
        		lv_hasPredicate_13_0, 
        		"EBoolean");
	        afterParserOrEnumRuleCall();
	    }

)
))?(	otherlv_14='icon' 
    {
    	newLeafNode(otherlv_14, grammarAccess.getActivityExtensionAccess().getIconKeyword_11_0());
    }
	otherlv_15=':' 
    {
    	newLeafNode(otherlv_15, grammarAccess.getActivityExtensionAccess().getColonKeyword_11_1());
    }
(
(
		lv_imagePathOff_16_0=RULE_STRING
		{
			newLeafNode(lv_imagePathOff_16_0, grammarAccess.getActivityExtensionAccess().getImagePathOffSTRINGTerminalRuleCall_11_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getActivityExtensionRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"imagePathOff",
        		lv_imagePathOff_16_0, 
        		"STRING");
	    }

)
))?	otherlv_17='}' 
    {
    	newLeafNode(otherlv_17, grammarAccess.getActivityExtensionAccess().getRightCurlyBracketKeyword_12());
    }
)
;







// Entry rule entryRuleFQN
entryRuleFQN returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getFQNRule()); } 
	 iv_ruleFQN=ruleFQN 
	 { $current=$iv_ruleFQN.current.getText(); }  
	 EOF 
;

// Rule FQN
ruleFQN returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    newLeafNode(this_ID_0, grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); 
    }
(
	kw='.' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFQNAccess().getFullStopKeyword_1_0()); 
    }
(( RULE_ID)=>    this_ID_2=RULE_ID    {
		$current.merge(this_ID_2);
    }

    { 
    newLeafNode(this_ID_2, grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); 
    }
))*)
    ;





// Entry rule entryRuleEBoolean
entryRuleEBoolean returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getEBooleanRule()); } 
	 iv_ruleEBoolean=ruleEBoolean 
	 { $current=$iv_ruleEBoolean.current.getText(); }  
	 EOF 
;

// Rule EBoolean
ruleEBoolean returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
	kw='true' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getEBooleanAccess().getTrueKeyword_0()); 
    }

    |
	kw='false' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getEBooleanAccess().getFalseKeyword_1()); 
    }
)
    ;





// Entry rule entryRuleEInt
entryRuleEInt returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getEIntRule()); } 
	 iv_ruleEInt=ruleEInt 
	 { $current=$iv_ruleEInt.current.getText(); }  
	 EOF 
;

// Rule EInt
ruleEInt returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
    this_INT_0=RULE_INT    {
		$current.merge(this_INT_0);
    }

    { 
    newLeafNode(this_INT_0, grammarAccess.getEIntAccess().getINTTerminalRuleCall()); 
    }

    ;





RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


