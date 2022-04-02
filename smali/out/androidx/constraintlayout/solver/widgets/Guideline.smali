.class public Landroidx/constraintlayout/solver/widgets/Guideline;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.source "Guideline.java"


# instance fields
.field private mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mHead:Landroidx/constraintlayout/solver/widgets/Rectangle;

.field private mHeadSize:I

.field private mIsPositionRelaxed:Z

.field private mMinimumPosition:I

.field private mOrientation:I

.field protected mRelativeBegin:I

.field protected mRelativeEnd:I

.field protected mRelativePercent:F


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 50
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 38
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    .line 40
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    .line 42
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    .line 44
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    .line 45
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mMinimumPosition:I

    .line 47
    new-instance v1, Landroidx/constraintlayout/solver/widgets/Rectangle;

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/Rectangle;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mHead:Landroidx/constraintlayout/solver/widgets/Rectangle;

    const/16 v1, 0x8

    .line 48
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mHeadSize:I

    .line 51
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 52
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v1, v1

    :goto_31
    if-ge v0, v1, :cond_3c

    .line 55
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_3c
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .registers 11

    .line 250
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-nez v0, :cond_9

    return-void

    .line 254
    :cond_9
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 255
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 256
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_27

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_27

    const/4 v3, 0x1

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    .line 257
    :goto_28
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-nez v6, :cond_49

    .line 258
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 259
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 260
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v4

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_47

    goto :goto_48

    :cond_47
    const/4 v4, 0x0

    :goto_48
    move v3, v4

    .line 262
    :cond_49
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v4, 0x6

    const/4 v6, -0x1

    const/4 v7, 0x5

    if-eq v0, v6, :cond_69

    .line 263
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 264
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 265
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {p1, v0, v1, v6, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    if-eqz v3, :cond_ac

    .line 267
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v5, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_ac

    .line 269
    :cond_69
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v6, :cond_8a

    .line 270
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 271
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    .line 272
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v6, v6

    invoke-virtual {p1, v0, v2, v6, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    if-eqz v3, :cond_ac

    .line 274
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 275
    invoke-virtual {p1, v2, v0, v5, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_ac

    .line 277
    :cond_8a
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_ac

    .line 278
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    .line 279
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    .line 280
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    .line 281
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    iget-boolean v8, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    move-object v3, p1

    .line 282
    invoke-static/range {v3 .. v8}, Landroidx/constraintlayout/solver/LinearSystem;->createRowDimensionPercent(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FZ)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 281
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_ac
    :goto_ac
    return-void
.end method

.method public allowedInBarrier()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public analyze(I)V
    .registers 8

    .line 213
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 217
    :cond_7
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_b8

    .line 218
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 219
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 220
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    if-eq v0, v2, :cond_58

    .line 221
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {v0, v4, v1, v2}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 222
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p1

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {v0, v4, p1, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_15a

    .line 223
    :cond_58
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v2, :cond_82

    .line 224
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 225
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p1

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v1, v1

    invoke-virtual {v0, v4, p1, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_15a

    .line 226
    :cond_82
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15a

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_15a

    .line 227
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 228
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget-object v2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 229
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p1

    invoke-virtual {v1, v4, p1, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_15a

    .line 232
    :cond_b8
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 233
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object v5, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 234
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    if-eq v0, v2, :cond_fd

    .line 235
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {v0, v4, v1, v2}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 236
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p1

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {v0, v4, p1, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto :goto_15a

    .line 237
    :cond_fd
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v2, :cond_126

    .line 238
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 239
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p1

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v1, v1

    invoke-virtual {v0, v4, p1, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto :goto_15a

    .line 240
    :cond_126
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15a

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_15a

    .line 241
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 242
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget-object v2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 243
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p1

    invoke-virtual {v1, v4, p1, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    :cond_15a
    :goto_15a
    return-void
.end method

.method public getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .registers 4

    .line 137
    sget-object v0, Landroidx/constraintlayout/solver/widgets/Guideline$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    goto :goto_1d

    :pswitch_c
    const/4 p1, 0x0

    return-object p1

    .line 147
    :pswitch_e
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-nez v0, :cond_1d

    .line 148
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 140
    :pswitch_15
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 141
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 159
    :cond_1d
    :goto_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public getAnchors()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .line 121
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    return v0
.end method

.method public setGuideBegin(I)V
    .registers 4

    const/4 v0, -0x1

    if-le p1, v0, :cond_b

    const/high16 v1, -0x40800000    # -1.0f

    .line 181
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    .line 182
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    .line 183
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    :cond_b
    return-void
.end method

.method public setGuideEnd(I)V
    .registers 4

    const/4 v0, -0x1

    if-le p1, v0, :cond_b

    const/high16 v1, -0x40800000    # -1.0f

    .line 189
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    .line 190
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    .line 191
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    :cond_b
    return-void
.end method

.method public setGuidePercent(F)V
    .registers 3

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    .line 173
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/4 p1, -0x1

    .line 174
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    .line 175
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    :cond_d
    return-void
.end method

.method public setOrientation(I)V
    .registers 5

    .line 89
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-ne v0, p1, :cond_5

    return-void

    .line 92
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    .line 93
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 94
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 95
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    goto :goto_1a

    .line 97
    :cond_16
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 99
    :goto_1a
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_25
    if-ge v0, p1, :cond_30

    .line 102
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_30
    return-void
.end method

.method public updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .registers 5

    .line 289
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 292
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    .line 293
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_28

    .line 294
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->setX(I)V

    .line 295
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->setY(I)V

    .line 296
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->setHeight(I)V

    .line 297
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->setWidth(I)V

    goto :goto_3c

    .line 299
    :cond_28
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->setX(I)V

    .line 300
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->setY(I)V

    .line 301
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->setWidth(I)V

    .line 302
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->setHeight(I)V

    :goto_3c
    return-void
.end method
