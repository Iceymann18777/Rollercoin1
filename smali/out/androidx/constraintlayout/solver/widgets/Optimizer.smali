.class public Landroidx/constraintlayout/solver/widgets/Optimizer;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static flags:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 44
    sput-object v0, Landroidx/constraintlayout/solver/widgets/Optimizer;->flags:[Z

    return-void
.end method

.method static analyze(ILandroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .registers 18

    move-object/from16 v0, p1

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->updateResolutionNodes()V

    .line 154
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    .line 155
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    .line 156
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    .line 157
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/16 v5, 0x8

    and-int/lit8 v6, p0, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v5, :cond_27

    const/4 v6, 0x1

    goto :goto_28

    :cond_27
    const/4 v6, 0x0

    .line 163
    :goto_28
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v7

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_38

    .line 164
    invoke-static {v0, v7}, Landroidx/constraintlayout/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v9

    if-eqz v9, :cond_38

    const/4 v9, 0x1

    goto :goto_39

    :cond_38
    const/4 v9, 0x0

    .line 166
    :goto_39
    iget v10, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x2

    if-eq v10, v12, :cond_1b7

    iget v10, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    if-eq v10, v12, :cond_1b7

    .line 168
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v7

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v7, :cond_fd

    if-eqz v9, :cond_58

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-ne v7, v5, :cond_58

    goto/16 :goto_fd

    :cond_58
    if-eqz v9, :cond_1b7

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    .line 215
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 216
    invoke-virtual {v3, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 217
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_80

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_80

    if-eqz v6, :cond_7b

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1b7

    .line 221
    :cond_7b
    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1b7

    .line 223
    :cond_80
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_9c

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_9c

    if-eqz v6, :cond_97

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1b7

    .line 227
    :cond_97
    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1b7

    .line 229
    :cond_9c
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_b9

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_b9

    if-eqz v6, :cond_b3

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1b7

    :cond_b3
    neg-int v7, v7

    .line 233
    invoke-virtual {v1, v3, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1b7

    .line 235
    :cond_b9
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_1b7

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_1b7

    if-eqz v6, :cond_d5

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 240
    :cond_d5
    iget v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v9, v9, v13

    if-nez v9, :cond_e9

    .line 241
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 242
    invoke-virtual {v3, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 243
    invoke-virtual {v1, v3, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 244
    invoke-virtual {v3, v1, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_1b7

    .line 247
    :cond_e9
    invoke-virtual {v1, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 248
    invoke-virtual {v3, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    neg-int v9, v7

    int-to-float v9, v9

    .line 249
    invoke-virtual {v1, v3, v9}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    int-to-float v9, v7

    .line 250
    invoke-virtual {v3, v1, v9}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 251
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_1b7

    .line 170
    :cond_fd
    :goto_fd
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_123

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_123

    .line 171
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 172
    invoke-virtual {v3, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_11a

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1b7

    .line 176
    :cond_11a
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1b7

    .line 178
    :cond_123
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_148

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_148

    .line 179
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 180
    invoke-virtual {v3, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_140

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1b7

    .line 184
    :cond_140
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto :goto_1b7

    .line 186
    :cond_148
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_175

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_175

    .line 187
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 188
    invoke-virtual {v3, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    if-eqz v6, :cond_16c

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto :goto_1b7

    .line 193
    :cond_16c
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto :goto_1b7

    .line 195
    :cond_175
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_1b7

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_1b7

    .line 196
    invoke-virtual {v1, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 197
    invoke-virtual {v3, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_1a6

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto :goto_1b7

    .line 204
    :cond_1a6
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v1, v3, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 259
    :cond_1b7
    :goto_1b7
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v8

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_1c7

    .line 260
    invoke-static {v0, v8}, Landroidx/constraintlayout/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v1

    if-eqz v1, :cond_1c7

    const/4 v7, 0x1

    goto :goto_1c8

    :cond_1c7
    const/4 v7, 0x0

    .line 262
    :goto_1c8
    iget v1, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    if-eq v1, v12, :cond_38f

    iget v1, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    if-eq v1, v12, :cond_38f

    .line 265
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v8

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v3, :cond_296

    if-eqz v7, :cond_1e2

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_1e2

    goto/16 :goto_296

    :cond_1e2
    if-eqz v7, :cond_38f

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    .line 324
    invoke-virtual {v2, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 325
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 326
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_20a

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_20a

    if-eqz v6, :cond_205

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_38f

    .line 330
    :cond_205
    invoke-virtual {v4, v2, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_38f

    .line 332
    :cond_20a
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_226

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_226

    if-eqz v6, :cond_221

    .line 334
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_38f

    .line 336
    :cond_221
    invoke-virtual {v4, v2, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_38f

    .line 338
    :cond_226
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_243

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_243

    if-eqz v6, :cond_23d

    .line 340
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v0

    invoke-virtual {v2, v4, v14, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_38f

    :cond_23d
    neg-int v0, v1

    .line 342
    invoke-virtual {v2, v4, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_38f

    .line 344
    :cond_243
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_38f

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_38f

    if-eqz v6, :cond_25f

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 349
    :cond_25f
    iget v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v3, v3, v13

    if-nez v3, :cond_273

    .line 350
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 351
    invoke-virtual {v4, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 352
    invoke-virtual {v2, v4, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 353
    invoke-virtual {v4, v2, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_38f

    .line 355
    :cond_273
    invoke-virtual {v2, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 356
    invoke-virtual {v4, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    neg-int v3, v1

    int-to-float v3, v3

    .line 357
    invoke-virtual {v2, v4, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    int-to-float v3, v1

    .line 358
    invoke-virtual {v4, v2, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 359
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 360
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v1, :cond_38f

    .line 361
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v1, v8, v2, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_38f

    .line 267
    :cond_296
    :goto_296
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_2d6

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_2d6

    .line 268
    invoke-virtual {v2, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 269
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_2b2

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto :goto_2b9

    .line 273
    :cond_2b2
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 275
    :goto_2b9
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_38f

    .line 276
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 277
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 278
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    neg-int v0, v0

    .line 277
    invoke-virtual {v2, v8, v1, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_38f

    .line 280
    :cond_2d6
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_30a

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_30a

    .line 281
    invoke-virtual {v2, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 282
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_2f2

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto :goto_2f9

    .line 286
    :cond_2f2
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 288
    :goto_2f9
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v1, :cond_38f

    .line 289
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v1, v8, v2, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_38f

    .line 291
    :cond_30a
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_33e

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_33e

    .line 292
    invoke-virtual {v2, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 293
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_326

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto :goto_32e

    .line 297
    :cond_326
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v2, v4, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 299
    :goto_32e
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v1, :cond_38f

    .line 300
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v1, v8, v2, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto :goto_38f

    .line 302
    :cond_33e
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_38f

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_38f

    .line 303
    invoke-virtual {v2, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 304
    invoke-virtual {v4, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_36f

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    goto :goto_380

    .line 311
    :cond_36f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v4, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v2, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 314
    :goto_380
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v1, :cond_38f

    .line 315
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v1, v8, v2, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    :cond_38f
    :goto_38f
    return-void
.end method

.method static applyChainOptimized(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)Z
    .registers 28

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    .line 383
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 384
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLast:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 385
    iget-object v5, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 386
    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 387
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 394
    iget v8, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    .line 395
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 396
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v9, p0

    .line 398
    iget-object v2, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v1

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x2

    const/4 v10, 0x1

    if-nez v1, :cond_38

    .line 404
    iget v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v11, :cond_28

    const/4 v11, 0x1

    goto :goto_29

    :cond_28
    const/4 v11, 0x0

    .line 405
    :goto_29
    iget v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-ne v12, v10, :cond_2f

    const/4 v12, 0x1

    goto :goto_30

    :cond_2f
    const/4 v12, 0x0

    .line 406
    :goto_30
    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-ne v7, v2, :cond_36

    :goto_34
    const/4 v2, 0x1

    goto :goto_4b

    :cond_36
    const/4 v2, 0x0

    goto :goto_4b

    .line 408
    :cond_38
    iget v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v11, :cond_3e

    const/4 v11, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v11, 0x0

    .line 409
    :goto_3f
    iget v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-ne v12, v10, :cond_45

    const/4 v12, 0x1

    goto :goto_46

    :cond_45
    const/4 v12, 0x0

    .line 410
    :goto_46
    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-ne v7, v2, :cond_36

    goto :goto_34

    :goto_4b
    move-object v14, v3

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_53
    const/16 v7, 0x8

    if-nez v13, :cond_109

    .line 423
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    if-eq v9, v7, :cond_a1

    add-int/lit8 v15, v15, 0x1

    if-nez v1, :cond_66

    .line 426
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    goto :goto_6a

    .line 428
    :cond_66
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    :goto_6a
    int-to-float v9, v9

    add-float v16, v16, v9

    if-eq v14, v5, :cond_7a

    .line 431
    iget-object v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    int-to-float v9, v9

    add-float v16, v16, v9

    :cond_7a
    if-eq v14, v6, :cond_89

    .line 434
    iget-object v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v19, p3, 0x1

    aget-object v9, v9, v19

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    int-to-float v9, v9

    add-float v16, v16, v9

    .line 436
    :cond_89
    iget-object v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    int-to-float v9, v9

    add-float v17, v17, v9

    .line 437
    iget-object v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v19, p3, 0x1

    aget-object v9, v9, v19

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    int-to-float v9, v9

    add-float v17, v17, v9

    .line 440
    :cond_a1
    iget-object v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    .line 442
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    if-eq v9, v7, :cond_df

    iget-object v7, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v7, v1

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v9, :cond_df

    add-int/lit8 v10, v10, 0x1

    if-nez v1, :cond_c7

    .line 447
    iget v7, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v7, :cond_bd

    const/4 v7, 0x0

    return v7

    :cond_bd
    const/4 v7, 0x0

    .line 449
    iget v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v9, :cond_c6

    iget v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v9, :cond_d6

    :cond_c6
    return v7

    :cond_c7
    const/4 v7, 0x0

    .line 453
    iget v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v9, :cond_cd

    return v7

    .line 455
    :cond_cd
    iget v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v9, :cond_de

    iget v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v9, :cond_d6

    goto :goto_de

    .line 459
    :cond_d6
    iget v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/16 v18, 0x0

    cmpl-float v9, v9, v18

    if-eqz v9, :cond_df

    :cond_de
    :goto_de
    return v7

    .line 465
    :cond_df
    iget-object v7, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v9, p3, 0x1

    aget-object v7, v7, v9

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_100

    .line 467
    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 468
    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_100

    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eq v9, v14, :cond_fe

    goto :goto_100

    :cond_fe
    move-object v9, v7

    goto :goto_101

    :cond_100
    :goto_100
    const/4 v9, 0x0

    :goto_101
    if-eqz v9, :cond_106

    move-object v14, v9

    goto/16 :goto_53

    :cond_106
    const/4 v13, 0x1

    goto/16 :goto_53

    .line 481
    :cond_109
    iget-object v9, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v9

    .line 482
    iget-object v13, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v19, p3, 0x1

    aget-object v13, v13, v19

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v13

    .line 484
    iget-object v7, v9, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v7, :cond_392

    iget-object v7, v13, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-nez v7, :cond_125

    goto/16 :goto_392

    .line 490
    :cond_125
    iget-object v7, v9, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    move-object/from16 v20, v3

    const/4 v3, 0x1

    if-ne v7, v3, :cond_390

    iget-object v7, v13, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-eq v7, v3, :cond_136

    goto/16 :goto_390

    :cond_136
    if-lez v10, :cond_13c

    if-eq v10, v15, :cond_13c

    const/4 v3, 0x0

    return v3

    :cond_13c
    if-nez v2, :cond_145

    if-nez v11, :cond_145

    if-eqz v12, :cond_143

    goto :goto_145

    :cond_143
    const/4 v3, 0x0

    goto :goto_15e

    :cond_145
    :goto_145
    if-eqz v5, :cond_151

    .line 504
    iget-object v3, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    int-to-float v3, v3

    goto :goto_152

    :cond_151
    const/4 v3, 0x0

    :goto_152
    if-eqz v6, :cond_15e

    .line 507
    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v19

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    .line 511
    :cond_15e
    :goto_15e
    iget-object v6, v9, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 512
    iget-object v7, v13, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    cmpg-float v13, v6, v7

    if-gez v13, :cond_16c

    sub-float/2addr v7, v6

    goto :goto_16e

    :cond_16c
    sub-float v7, v6, v7

    :goto_16e
    sub-float v7, v7, v16

    const-wide/16 v21, 0x1

    if-lez v10, :cond_229

    if-ne v10, v15, :cond_229

    .line 521
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    if-eqz v2, :cond_18a

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v1

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_18a

    const/4 v2, 0x0

    return v2

    :cond_18a
    add-float v7, v7, v16

    sub-float v7, v7, v17

    move-object/from16 v3, v20

    :goto_190
    if-eqz v3, :cond_227

    .line 529
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v2, :cond_1ae

    .line 530
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v11, v2, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    sub-long v11, v11, v21

    iput-wide v11, v2, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    .line 531
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v11, v2, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    add-long v11, v11, v21

    iput-wide v11, v2, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    .line 532
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v11, v2, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    add-long v11, v11, v21

    iput-wide v11, v2, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    .line 534
    :cond_1ae
    iget-object v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    if-nez v2, :cond_1b6

    if-ne v3, v4, :cond_224

    :cond_1b6
    int-to-float v5, v10

    div-float v5, v7, v5

    const/4 v11, 0x0

    cmpl-float v12, v8, v11

    if-lez v12, :cond_1d2

    .line 538
    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v5, v5, v1

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v5, v5, v11

    if-nez v5, :cond_1cb

    const/16 v18, 0x0

    goto :goto_1d4

    .line 541
    :cond_1cb
    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v5, v5, v1

    mul-float v5, v5, v7

    div-float/2addr v5, v8

    :cond_1d2
    move/from16 v18, v5

    .line 544
    :goto_1d4
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    const/16 v11, 0x8

    if-ne v5, v11, :cond_1de

    const/16 v18, 0x0

    .line 547
    :cond_1de
    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v6, v5

    .line 548
    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    iget-object v11, v9, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v5, v11, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 550
    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v19

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    iget-object v11, v9, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    add-float v6, v6, v18

    invoke-virtual {v5, v11, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 552
    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 553
    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v19

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 555
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v19

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v6, v3

    :cond_224
    move-object v3, v2

    goto/16 :goto_190

    :cond_227
    const/4 v2, 0x1

    return v2

    :cond_229
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gez v8, :cond_231

    const/4 v2, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_231
    if-eqz v2, :cond_2b6

    sub-float/2addr v7, v3

    move-object/from16 v2, v20

    .line 573
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBiasPercent(I)F

    move-result v3

    mul-float v7, v7, v3

    add-float/2addr v6, v7

    :cond_23d
    :goto_23d
    move-object v3, v2

    if-eqz v3, :cond_2bd

    .line 575
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v2, :cond_25c

    .line 576
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v7, v2, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    sub-long v7, v7, v21

    iput-wide v7, v2, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    .line 577
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v7, v2, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    add-long v7, v7, v21

    iput-wide v7, v2, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    .line 578
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v7, v2, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    add-long v7, v7, v21

    iput-wide v7, v2, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    .line 580
    :cond_25c
    iget-object v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    if-nez v2, :cond_264

    if-ne v3, v4, :cond_23d

    :cond_264
    if-nez v1, :cond_26b

    .line 584
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    goto :goto_26f

    .line 586
    :cond_26b
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    :goto_26f
    int-to-float v5, v5

    .line 588
    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 589
    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    iget-object v8, v9, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v7, v8, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 591
    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v19

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    iget-object v8, v9, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    add-float/2addr v6, v5

    invoke-virtual {v7, v8, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 593
    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 594
    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v19

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 596
    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v19

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v6, v3

    goto :goto_23d

    :cond_2b6
    move-object/from16 v2, v20

    if-nez v11, :cond_2c0

    if-eqz v12, :cond_2bd

    goto :goto_2c0

    :cond_2bd
    const/4 v0, 0x1

    goto/16 :goto_38f

    :cond_2c0
    :goto_2c0
    if-eqz v11, :cond_2c4

    :goto_2c2
    sub-float/2addr v7, v3

    goto :goto_2c7

    :cond_2c4
    if-eqz v12, :cond_2c7

    goto :goto_2c2

    :cond_2c7
    :goto_2c7
    add-int/lit8 v3, v15, 0x1

    int-to-float v3, v3

    div-float v3, v7, v3

    if-eqz v12, :cond_2d9

    const/4 v8, 0x1

    if-le v15, v8, :cond_2d5

    add-int/lit8 v3, v15, -0x1

    int-to-float v3, v3

    goto :goto_2d7

    :cond_2d5
    const/high16 v3, 0x40000000    # 2.0f

    :goto_2d7
    div-float v3, v7, v3

    .line 616
    :cond_2d9
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2e4

    add-float v7, v6, v3

    goto :goto_2e5

    :cond_2e4
    move v7, v6

    :goto_2e5
    if-eqz v12, :cond_2f4

    const/4 v8, 0x1

    if-le v15, v8, :cond_2f4

    .line 620
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    :cond_2f4
    if-eqz v11, :cond_302

    if-eqz v5, :cond_302

    .line 624
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v7, v6

    :cond_302
    :goto_302
    if-eqz v2, :cond_2bd

    .line 628
    sget-object v6, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v6, :cond_320

    .line 629
    sget-object v6, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v10, v6, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    sub-long v10, v10, v21

    iput-wide v10, v6, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    .line 630
    sget-object v6, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v10, v6, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    add-long v10, v10, v21

    iput-wide v10, v6, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    .line 631
    sget-object v6, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v10, v6, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    add-long v10, v10, v21

    iput-wide v10, v6, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    .line 633
    :cond_320
    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v6, v6, v1

    if-nez v6, :cond_32c

    if-ne v2, v4, :cond_329

    goto :goto_32c

    :cond_329
    const/16 v8, 0x8

    goto :goto_38c

    :cond_32c
    :goto_32c
    if-nez v1, :cond_333

    .line 637
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    goto :goto_337

    .line 639
    :cond_333
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    :goto_337
    int-to-float v8, v8

    if-eq v2, v5, :cond_344

    .line 642
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v7, v10

    .line 644
    :cond_344
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    iget-object v11, v9, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v10, v11, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 646
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, v19

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    iget-object v11, v9, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    add-float v12, v7, v8

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 648
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 649
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, v19

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 650
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v19

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v8, v2

    add-float/2addr v7, v8

    if-eqz v6, :cond_329

    .line 651
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v8, 0x8

    if-eq v2, v8, :cond_38c

    add-float/2addr v7, v3

    :cond_38c
    :goto_38c
    move-object v2, v6

    goto/16 :goto_302

    :goto_38f
    return v0

    :cond_390
    :goto_390
    const/4 v0, 0x0

    return v0

    :cond_392
    :goto_392
    const/4 v0, 0x0

    return v0
.end method

.method static checkMatchParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .registers 8

    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_46

    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_46

    .line 60
    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 61
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v1, v2

    .line 68
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 69
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 70
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 71
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 72
    iput v3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 74
    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    .line 76
    :cond_46
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v2, :cond_ab

    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_ab

    .line 79
    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 80
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result p0

    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr p0, v1

    .line 87
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 88
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 89
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 90
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v1, p0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 91
    iget v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v1, :cond_92

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a6

    .line 92
    :cond_92
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 93
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 95
    :cond_a6
    iput v3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 97
    invoke-virtual {p2, v0, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    :cond_ab
    return-void
.end method

.method private static optimizableMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z
    .registers 6

    .line 111
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return v2

    .line 114
    :cond_a
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v1, 0x0

    const/4 v3, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1f

    .line 115
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    aget-object p0, p0, v3

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p0, p1, :cond_1e

    :cond_1e
    return v2

    :cond_1f
    if-nez p1, :cond_2f

    .line 123
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz p1, :cond_26

    return v2

    .line 126
    :cond_26
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez p1, :cond_2e

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz p0, :cond_3d

    :cond_2e
    return v2

    .line 130
    :cond_2f
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz p1, :cond_34

    return v2

    .line 133
    :cond_34
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez p1, :cond_3e

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz p0, :cond_3d

    goto :goto_3e

    :cond_3d
    return v3

    :cond_3e
    :goto_3e
    return v2
.end method

.method static setOptimizedWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;II)V
    .registers 7

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, v0, 0x1

    .line 674
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    .line 675
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 676
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    int-to-float p2, p2

    iput p2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 678
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p2

    const/4 v2, 0x1

    iput v2, p2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    .line 680
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p2

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v3, v0

    .line 681
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iput-object v0, p2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 682
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p2

    .line 683
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 684
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p0

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    return-void
.end method
