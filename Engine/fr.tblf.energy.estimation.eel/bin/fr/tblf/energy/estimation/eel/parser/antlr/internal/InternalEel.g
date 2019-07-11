/*
 * generated by Xtext 2.14.0
 */
grammar InternalEel;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package fr.tblf.energy.estimation.eel.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package fr.tblf.energy.estimation.eel.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import fr.tblf.energy.estimation.eel.services.EelGrammarAccess;

}

@parser::members {

 	private EelGrammarAccess grammarAccess;

    public InternalEelParser(TokenStream input, EelGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Platform";
   	}

   	@Override
   	protected EelGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRulePlatform
entryRulePlatform returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPlatformRule()); }
	iv_rulePlatform=rulePlatform
	{ $current=$iv_rulePlatform.current; }
	EOF;

// Rule Platform
rulePlatform returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getPlatformAccess().getPlatformAction_0(),
					$current);
			}
		)
		otherlv_1='Platform'
		{
			newLeafNode(otherlv_1, grammarAccess.getPlatformAccess().getPlatformKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPlatformAccess().getNameEStringParserRuleCall_2_0());
				}
				lv_name_2_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPlatformRule());
					}
					set(
						$current,
						"name",
						lv_name_2_0,
						"fr.tblf.energy.estimation.eel.Eel.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_3='{'
		{
			newLeafNode(otherlv_3, grammarAccess.getPlatformAccess().getLeftCurlyBracketKeyword_3());
		}
		(
			otherlv_4='targets'
			{
				newLeafNode(otherlv_4, grammarAccess.getPlatformAccess().getTargetsKeyword_4_0());
			}
			otherlv_5='{'
			{
				newLeafNode(otherlv_5, grammarAccess.getPlatformAccess().getLeftCurlyBracketKeyword_4_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getPlatformAccess().getTargetsMetaClassParserRuleCall_4_2_0());
					}
					lv_targets_6_0=ruleMetaClass
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getPlatformRule());
						}
						add(
							$current,
							"targets",
							lv_targets_6_0,
							"fr.tblf.energy.estimation.eel.Eel.MetaClass");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				otherlv_7=','
				{
					newLeafNode(otherlv_7, grammarAccess.getPlatformAccess().getCommaKeyword_4_3_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getPlatformAccess().getTargetsMetaClassParserRuleCall_4_3_1_0());
						}
						lv_targets_8_0=ruleMetaClass
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getPlatformRule());
							}
							add(
								$current,
								"targets",
								lv_targets_8_0,
								"fr.tblf.energy.estimation.eel.Eel.MetaClass");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)*
			otherlv_9='}'
			{
				newLeafNode(otherlv_9, grammarAccess.getPlatformAccess().getRightCurlyBracketKeyword_4_4());
			}
		)?
		(
			otherlv_10='estimations'
			{
				newLeafNode(otherlv_10, grammarAccess.getPlatformAccess().getEstimationsKeyword_5_0());
			}
			otherlv_11='{'
			{
				newLeafNode(otherlv_11, grammarAccess.getPlatformAccess().getLeftCurlyBracketKeyword_5_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getPlatformAccess().getEstimationsEstimationParserRuleCall_5_2_0());
					}
					lv_estimations_12_0=ruleEstimation
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getPlatformRule());
						}
						add(
							$current,
							"estimations",
							lv_estimations_12_0,
							"fr.tblf.energy.estimation.eel.Eel.Estimation");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				otherlv_13=','
				{
					newLeafNode(otherlv_13, grammarAccess.getPlatformAccess().getCommaKeyword_5_3_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getPlatformAccess().getEstimationsEstimationParserRuleCall_5_3_1_0());
						}
						lv_estimations_14_0=ruleEstimation
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getPlatformRule());
							}
							add(
								$current,
								"estimations",
								lv_estimations_14_0,
								"fr.tblf.energy.estimation.eel.Eel.Estimation");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)*
			otherlv_15='}'
			{
				newLeafNode(otherlv_15, grammarAccess.getPlatformAccess().getRightCurlyBracketKeyword_5_4());
			}
		)?
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getPlatformAccess().getVariablesVariableParserRuleCall_6_0_0());
					}
					lv_variables_16_0=ruleVariable
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getPlatformRule());
						}
						add(
							$current,
							"variables",
							lv_variables_16_0,
							"fr.tblf.energy.estimation.eel.Eel.Variable");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				otherlv_17=','
				{
					newLeafNode(otherlv_17, grammarAccess.getPlatformAccess().getCommaKeyword_6_1_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getPlatformAccess().getVariablesVariableParserRuleCall_6_1_1_0());
						}
						lv_variables_18_0=ruleVariable
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getPlatformRule());
							}
							add(
								$current,
								"variables",
								lv_variables_18_0,
								"fr.tblf.energy.estimation.eel.Eel.Variable");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)*
		)?
		otherlv_19='}'
		{
			newLeafNode(otherlv_19, grammarAccess.getPlatformAccess().getRightCurlyBracketKeyword_7());
		}
	)
;

// Entry rule entryRuleEString
entryRuleEString returns [String current=null]:
	{ newCompositeNode(grammarAccess.getEStringRule()); }
	iv_ruleEString=ruleEString
	{ $current=$iv_ruleEString.current.getText(); }
	EOF;

// Rule EString
ruleEString returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		this_STRING_0=RULE_STRING
		{
			$current.merge(this_STRING_0);
		}
		{
			newLeafNode(this_STRING_0, grammarAccess.getEStringAccess().getSTRINGTerminalRuleCall_0());
		}
		    |
		this_ID_1=RULE_ID
		{
			$current.merge(this_ID_1);
		}
		{
			newLeafNode(this_ID_1, grammarAccess.getEStringAccess().getIDTerminalRuleCall_1());
		}
	)
;

// Entry rule entryRuleEstimation
entryRuleEstimation returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getEstimationRule()); }
	iv_ruleEstimation=ruleEstimation
	{ $current=$iv_ruleEstimation.current; }
	EOF;

// Rule Estimation
ruleEstimation returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='target'
		{
			newLeafNode(otherlv_0, grammarAccess.getEstimationAccess().getTargetKeyword_0());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getEstimationRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getEstimationAccess().getTargetTargetCrossReference_1_0());
				}
				ruleEString
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_2='variables'
			{
				newLeafNode(otherlv_2, grammarAccess.getEstimationAccess().getVariablesKeyword_2_0());
			}
			otherlv_3='('
			{
				newLeafNode(otherlv_3, grammarAccess.getEstimationAccess().getLeftParenthesisKeyword_2_1());
			}
			(
				(
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getEstimationRule());
						}
					}
					{
						newCompositeNode(grammarAccess.getEstimationAccess().getVariablesVariableCrossReference_2_2_0());
					}
					ruleEString
					{
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				otherlv_5=','
				{
					newLeafNode(otherlv_5, grammarAccess.getEstimationAccess().getCommaKeyword_2_3_0());
				}
				(
					(
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getEstimationRule());
							}
						}
						{
							newCompositeNode(grammarAccess.getEstimationAccess().getVariablesVariableCrossReference_2_3_1_0());
						}
						ruleEString
						{
							afterParserOrEnumRuleCall();
						}
					)
				)
			)*
			otherlv_7=')'
			{
				newLeafNode(otherlv_7, grammarAccess.getEstimationAccess().getRightParenthesisKeyword_2_4());
			}
		)?
		otherlv_8='formula'
		{
			newLeafNode(otherlv_8, grammarAccess.getEstimationAccess().getFormulaKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getEstimationAccess().getFormulaEStringParserRuleCall_4_0());
				}
				lv_formula_9_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getEstimationRule());
					}
					set(
						$current,
						"formula",
						lv_formula_9_0,
						"fr.tblf.energy.estimation.eel.Eel.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleVariable
entryRuleVariable returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getVariableRule()); }
	iv_ruleVariable=ruleVariable
	{ $current=$iv_ruleVariable.current; }
	EOF;

// Rule Variable
ruleVariable returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getVariableAccess().getVibilityVisibilityEnumRuleCall_0_0());
				}
				lv_vibility_0_0=ruleVisibility
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getVariableRule());
					}
					set(
						$current,
						"vibility",
						lv_vibility_0_0,
						"fr.tblf.energy.estimation.eel.Eel.Visibility");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getVariableAccess().getNameEStringParserRuleCall_1_0());
				}
				lv_name_1_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getVariableRule());
					}
					set(
						$current,
						"name",
						lv_name_1_0,
						"fr.tblf.energy.estimation.eel.Eel.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_2='='
		{
			newLeafNode(otherlv_2, grammarAccess.getVariableAccess().getEqualsSignKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getVariableAccess().getValueEDoubleParserRuleCall_3_0());
				}
				lv_value_3_0=ruleEDouble
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getVariableRule());
					}
					set(
						$current,
						"value",
						lv_value_3_0,
						"fr.tblf.energy.estimation.eel.Eel.EDouble");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleEDouble
entryRuleEDouble returns [String current=null]:
	{ newCompositeNode(grammarAccess.getEDoubleRule()); }
	iv_ruleEDouble=ruleEDouble
	{ $current=$iv_ruleEDouble.current.getText(); }
	EOF;

// Rule EDouble
ruleEDouble returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			kw='-'
			{
				$current.merge(kw);
				newLeafNode(kw, grammarAccess.getEDoubleAccess().getHyphenMinusKeyword_0());
			}
		)?
		(
			this_INT_1=RULE_INT
			{
				$current.merge(this_INT_1);
			}
			{
				newLeafNode(this_INT_1, grammarAccess.getEDoubleAccess().getINTTerminalRuleCall_1());
			}
		)?
		kw='.'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getEDoubleAccess().getFullStopKeyword_2());
		}
		this_INT_3=RULE_INT
		{
			$current.merge(this_INT_3);
		}
		{
			newLeafNode(this_INT_3, grammarAccess.getEDoubleAccess().getINTTerminalRuleCall_3());
		}
		(
			(
				kw='E'
				{
					$current.merge(kw);
					newLeafNode(kw, grammarAccess.getEDoubleAccess().getEKeyword_4_0_0());
				}
				    |
				kw='e'
				{
					$current.merge(kw);
					newLeafNode(kw, grammarAccess.getEDoubleAccess().getEKeyword_4_0_1());
				}
			)
			(
				kw='-'
				{
					$current.merge(kw);
					newLeafNode(kw, grammarAccess.getEDoubleAccess().getHyphenMinusKeyword_4_1());
				}
			)?
			this_INT_7=RULE_INT
			{
				$current.merge(this_INT_7);
			}
			{
				newLeafNode(this_INT_7, grammarAccess.getEDoubleAccess().getINTTerminalRuleCall_4_2());
			}
		)?
	)
;

// Entry rule entryRuleMetaClass
entryRuleMetaClass returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMetaClassRule()); }
	iv_ruleMetaClass=ruleMetaClass
	{ $current=$iv_ruleMetaClass.current; }
	EOF;

// Rule MetaClass
ruleMetaClass returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='class'
		{
			newLeafNode(otherlv_0, grammarAccess.getMetaClassAccess().getClassKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getMetaClassAccess().getNameEStringParserRuleCall_1_0());
				}
				lv_name_1_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMetaClassRule());
					}
					set(
						$current,
						"name",
						lv_name_1_0,
						"fr.tblf.energy.estimation.eel.Eel.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_2='('
			{
				newLeafNode(otherlv_2, grammarAccess.getMetaClassAccess().getLeftParenthesisKeyword_2_0());
			}
			(
				(
					(
						{
							newCompositeNode(grammarAccess.getMetaClassAccess().getOperationsOperationParserRuleCall_2_1_0_0());
						}
						lv_operations_3_0=ruleOperation
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getMetaClassRule());
							}
							add(
								$current,
								"operations",
								lv_operations_3_0,
								"fr.tblf.energy.estimation.eel.Eel.Operation");
							afterParserOrEnumRuleCall();
						}
					)
				)
				(
					otherlv_4=','
					{
						newLeafNode(otherlv_4, grammarAccess.getMetaClassAccess().getCommaKeyword_2_1_1_0());
					}
					(
						(
							{
								newCompositeNode(grammarAccess.getMetaClassAccess().getOperationsOperationParserRuleCall_2_1_1_1_0());
							}
							lv_operations_5_0=ruleOperation
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getMetaClassRule());
								}
								add(
									$current,
									"operations",
									lv_operations_5_0,
									"fr.tblf.energy.estimation.eel.Eel.Operation");
								afterParserOrEnumRuleCall();
							}
						)
					)
				)?
			)?
			otherlv_6=')'
			{
				newLeafNode(otherlv_6, grammarAccess.getMetaClassAccess().getRightParenthesisKeyword_2_2());
			}
		)?
	)
;

// Entry rule entryRuleOperation
entryRuleOperation returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getOperationRule()); }
	iv_ruleOperation=ruleOperation
	{ $current=$iv_ruleOperation.current; }
	EOF;

// Rule Operation
ruleOperation returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			otherlv_0='op'
			{
				newLeafNode(otherlv_0, grammarAccess.getOperationAccess().getOpKeyword_0());
			}
		)?
		(
			(
				{
					newCompositeNode(grammarAccess.getOperationAccess().getNameEStringParserRuleCall_1_0());
				}
				lv_name_1_0=ruleEString
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getOperationRule());
					}
					set(
						$current,
						"name",
						lv_name_1_0,
						"fr.tblf.energy.estimation.eel.Eel.EString");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Rule Visibility
ruleVisibility returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='GLOBAL'
			{
				$current = grammarAccess.getVisibilityAccess().getGLOBALEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getVisibilityAccess().getGLOBALEnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='LOCAL'
			{
				$current = grammarAccess.getVisibilityAccess().getLOCALEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getVisibilityAccess().getLOCALEnumLiteralDeclaration_1());
			}
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
