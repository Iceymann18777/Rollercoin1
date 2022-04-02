.class public Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
.super Landroidx/constraintlayout/solver/widgets/WidgetContainer;
.source "ConstraintWidgetContainer.java"


# instance fields
.field mDebugSolverPassCount:I

.field public mGroupsWrapOptimized:Z

.field private mHeightMeasuredTooSmall:Z

.field mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

.field mHorizontalChainsSize:I

.field public mHorizontalWrapOptimized:Z

.field private mIsRtl:Z

.field private mOptimizationLevel:I

.field mPaddingBottom:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaddingTop:I

.field public mSkipSolver:Z

.field private mSnapshot:Landroidx/constraintlayout/solver/widgets/Snapshot;

.field protected mSystem:Landroidx/constraintlayout/solver/LinearSystem;

.field mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

.field mVerticalChainsSize:I

.field public mVerticalWrapOptimized:Z

.field public mWidgetGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mWidthMeasuredTooSmall:Z

.field public mWrapFixedHeight:I

.field public mWrapFixedWidth:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 82
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 47
    new-instance v1, Landroidx/constraintlayout/solver/LinearSystem;

    invoke-direct {v1}, Landroidx/constraintlayout/solver/LinearSystem;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    .line 56
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 57
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 v1, 0x4

    new-array v2, v1, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 59
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    new-array v1, v1, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 60
    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    .line 63
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 64
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 65
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 66
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    .line 67
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    const/4 v1, 0x7

    .line 69
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 70
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 72
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 73
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 166
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    return-void
.end method

.method private addHorizontalChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .registers 7

    .line 744
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    array-length v2, v1

    if-lt v0, v2, :cond_14

    .line 745
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 746
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 748
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ChainHead;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Landroidx/constraintlayout/solver/widgets/ChainHead;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V

    aput-object v2, v0, v1

    .line 749
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    return-void
.end method

.method private addVerticalChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .registers 7

    .line 759
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    array-length v3, v2

    if-lt v0, v3, :cond_14

    .line 760
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    .line 761
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 763
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    new-instance v3, Landroidx/constraintlayout/solver/widgets/ChainHead;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v4

    invoke-direct {v3, p1, v1, v4}, Landroidx/constraintlayout/solver/widgets/ChainHead;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V

    aput-object v3, v0, v2

    .line 764
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    return-void
.end method

.method private resetChains()V
    .registers 2

    const/4 v0, 0x0

    .line 718
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 719
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    return-void
.end method


# virtual methods
.method addChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V
    .registers 4

    if-nez p2, :cond_6

    .line 731
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addHorizontalChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    goto :goto_c

    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 733
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addVerticalChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public addChildrenToSolver(Landroidx/constraintlayout/solver/LinearSystem;)Z
    .registers 9

    .line 180
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 181
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    const/4 v3, 0x1

    if-ge v2, v0, :cond_4f

    .line 184
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 185
    instance-of v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_46

    .line 186
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v1

    .line 187
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v6, v3

    .line 188
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_2b

    .line 189
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 191
    :cond_2b
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_34

    .line 192
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 194
    :cond_34
    invoke-virtual {v4, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 195
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_3e

    .line 196
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 198
    :cond_3e
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_4c

    .line 199
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_4c

    .line 202
    :cond_46
    invoke-static {p0, p1, v4}, Landroidx/constraintlayout/solver/widgets/Optimizer;->checkMatchParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 203
    invoke-virtual {v4, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    :cond_4c
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 207
    :cond_4f
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    if-lez v0, :cond_56

    .line 208
    invoke-static {p0, p1, v1}, Landroidx/constraintlayout/solver/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;I)V

    .line 210
    :cond_56
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    if-lez v0, :cond_5d

    .line 211
    invoke-static {p0, p1, v3}, Landroidx/constraintlayout/solver/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;I)V

    :cond_5d
    return v3
.end method

.method public analyze(I)V
    .registers 5

    .line 280
    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->analyze(I)V

    .line 281
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 283
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->analyze(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public getOptimizationLevel()I
    .registers 2

    .line 122
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    return v0
.end method

.method public handlesInternalConstraints()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isHeightMeasuredTooSmall()Z
    .registers 2

    .line 164
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    return v0
.end method

.method public isRtl()Z
    .registers 2

    .line 267
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    return v0
.end method

.method public isWidthMeasuredTooSmall()Z
    .registers 2

    .line 159
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    return v0
.end method

.method public layout()V
    .registers 22

    move-object/from16 v1, p0

    .line 298
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 299
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mY:I

    .line 300
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 302
    iput-boolean v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 303
    iput-boolean v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 305
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_46

    .line 306
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroidx/constraintlayout/solver/widgets/Snapshot;

    if-nez v0, :cond_2a

    .line 307
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Snapshot;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/widgets/Snapshot;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    iput-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroidx/constraintlayout/solver/widgets/Snapshot;

    .line 309
    :cond_2a
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroidx/constraintlayout/solver/widgets/Snapshot;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/Snapshot;->updateFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 314
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 315
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->resetAnchors()V

    .line 317
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/LinearSystem;->getCache()Landroidx/constraintlayout/solver/Cache;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V

    goto :goto_4a

    .line 319
    :cond_46
    iput v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 320
    iput v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mY:I

    .line 323
    :goto_4a
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/16 v7, 0x20

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-eqz v0, :cond_6a

    .line 324
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 325
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeReset()V

    .line 327
    :cond_5c
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v0

    if-nez v0, :cond_65

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimize()V

    .line 330
    :cond_65
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    iput-boolean v9, v0, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    goto :goto_6e

    .line 332
    :cond_6a
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    iput-boolean v4, v0, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    .line 336
    :goto_6e
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v0, v9

    .line 337
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v11, v0, v4

    .line 345
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->resetChains()V

    .line 347
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_92

    .line 348
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 349
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    new-instance v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v4, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 353
    :cond_92
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    .line 354
    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 355
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v14, :cond_ad

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v14, :cond_ab

    goto :goto_ad

    :cond_ab
    const/4 v14, 0x0

    goto :goto_ae

    :cond_ad
    :goto_ad
    const/4 v14, 0x1

    :goto_ae
    const/4 v0, 0x0

    const/4 v15, 0x0

    :goto_b0
    if-ge v15, v12, :cond_2f6

    .line 357
    iget-boolean v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    if-nez v8, :cond_2f6

    .line 358
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    iget-boolean v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    if-eqz v8, :cond_c6

    move/from16 v19, v12

    goto/16 :goto_2ea

    .line 361
    :cond_c6
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v8

    if-eqz v8, :cond_fb

    .line 362
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v7, :cond_ed

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_ed

    .line 363
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->getWidgetsToSolve()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    iput-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    goto :goto_fb

    .line 365
    :cond_ed
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    iput-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 368
    :cond_fb
    :goto_fb
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->resetChains()V

    .line 369
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_105
    if-ge v8, v7, :cond_11d

    .line 375
    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 376
    instance-of v9, v4, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    if-eqz v9, :cond_118

    .line 377
    check-cast v4, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->layout()V

    :cond_118
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto :goto_105

    :cond_11d
    move v4, v0

    const/4 v0, 0x0

    const/4 v8, 0x1

    :goto_120
    if-eqz v8, :cond_2d9

    move/from16 v17, v4

    const/4 v9, 0x1

    add-int/lit8 v4, v0, 0x1

    .line 386
    :try_start_127
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/LinearSystem;->reset()V

    .line 387
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->resetChains()V

    .line 397
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->createObjectVariables(Landroidx/constraintlayout/solver/LinearSystem;)V

    const/4 v0, 0x0

    :goto_135
    if-ge v0, v7, :cond_14b

    .line 399
    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_13f} :catch_164

    move/from16 v18, v8

    .line 400
    :try_start_141
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v9, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->createObjectVariables(Landroidx/constraintlayout/solver/LinearSystem;)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v8, v18

    goto :goto_135

    :cond_14b
    move/from16 v18, v8

    .line 403
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addChildrenToSolver(Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v8
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_153} :catch_160

    if-eqz v8, :cond_15d

    .line 405
    :try_start_155
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/LinearSystem;->minimize()V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_15a} :catch_15b

    goto :goto_15d

    :catch_15b
    move-exception v0

    goto :goto_167

    :cond_15d
    :goto_15d
    move/from16 v19, v12

    goto :goto_186

    :catch_160
    move-exception v0

    move/from16 v8, v18

    goto :goto_167

    :catch_164
    move-exception v0

    move/from16 v18, v8

    .line 408
    :goto_167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 409
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move/from16 v18, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v12

    const-string v12, "EXCEPTION : "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move/from16 v8, v18

    :goto_186
    if-eqz v8, :cond_191

    .line 412
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    sget-object v9, Landroidx/constraintlayout/solver/widgets/Optimizer;->flags:[Z

    invoke-virtual {v1, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateChildrenFromSolver(Landroidx/constraintlayout/solver/LinearSystem;[Z)V

    :cond_18f
    :goto_18f
    const/4 v9, 0x2

    goto :goto_1da

    .line 414
    :cond_191
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v1, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    const/4 v8, 0x0

    :goto_197
    if-ge v8, v7, :cond_18f

    .line 416
    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 417
    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v16, 0x0

    aget-object v12, v12, v16

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v0, :cond_1bc

    .line 419
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWrapWidth()I

    move-result v12

    if-ge v0, v12, :cond_1bc

    .line 420
    sget-object v0, Landroidx/constraintlayout/solver/widgets/Optimizer;->flags:[Z

    const/4 v8, 0x2

    const/4 v12, 0x1

    aput-boolean v12, v0, v8

    goto :goto_18f

    :cond_1bc
    const/4 v12, 0x1

    .line 423
    iget-object v0, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v12

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v12, :cond_1d6

    .line 425
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWrapHeight()I

    move-result v9

    if-ge v0, v9, :cond_1d6

    .line 426
    sget-object v0, Landroidx/constraintlayout/solver/widgets/Optimizer;->flags:[Z

    const/4 v8, 0x1

    const/4 v9, 0x2

    aput-boolean v8, v0, v9

    goto :goto_1da

    :cond_1d6
    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x1

    goto :goto_197

    :goto_1da
    if-eqz v14, :cond_252

    const/16 v8, 0x8

    if-ge v4, v8, :cond_252

    .line 433
    sget-object v0, Landroidx/constraintlayout/solver/widgets/Optimizer;->flags:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_252

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_1e9
    if-ge v0, v7, :cond_213

    .line 439
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move/from16 v18, v4

    .line 440
    iget v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v20

    add-int v4, v4, v20

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 441
    iget v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    add-int/2addr v4, v8

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v18

    const/16 v8, 0x8

    goto :goto_1e9

    :cond_213
    move/from16 v18, v4

    .line 443
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 444
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 445
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v8, :cond_239

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v8

    if-ge v8, v0, :cond_239

    .line 451
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 452
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v9, 0x0

    aput-object v8, v0, v9

    const/4 v0, 0x1

    const/16 v17, 0x1

    goto :goto_23a

    :cond_239
    const/4 v0, 0x0

    .line 457
    :goto_23a
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v8, :cond_255

    .line 458
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    if-ge v8, v4, :cond_255

    .line 463
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 464
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x1

    aput-object v4, v0, v8

    const/4 v0, 0x1

    const/16 v17, 0x1

    goto :goto_255

    :cond_252
    move/from16 v18, v4

    const/4 v0, 0x0

    .line 471
    :cond_255
    :goto_255
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 472
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v8

    if-le v4, v8, :cond_272

    .line 477
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 478
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    aput-object v4, v0, v8

    const/4 v0, 0x1

    const/16 v17, 0x1

    .line 482
    :cond_272
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 483
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    if-le v4, v8, :cond_28f

    .line 488
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 489
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x1

    aput-object v4, v0, v8

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_292

    :cond_28f
    const/4 v8, 0x1

    move/from16 v9, v17

    :goto_292
    if-nez v9, :cond_2d1

    .line 495
    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v12, 0x0

    aget-object v4, v4, v12

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v12, :cond_2b3

    if-lez v5, :cond_2b3

    .line 497
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    if-le v4, v5, :cond_2b3

    .line 503
    iput-boolean v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 505
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v9, 0x0

    aput-object v4, v0, v9

    .line 506
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    const/4 v0, 0x1

    const/4 v9, 0x1

    .line 510
    :cond_2b3
    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v8

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v12, :cond_2d1

    if-lez v6, :cond_2d1

    .line 512
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    if-le v4, v6, :cond_2d1

    .line 518
    iput-boolean v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 520
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v4, v0, v8

    .line 521
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    const/4 v4, 0x1

    const/4 v8, 0x1

    goto :goto_2d3

    :cond_2d1
    move v8, v0

    move v4, v9

    :goto_2d3
    move/from16 v0, v18

    move/from16 v12, v19

    goto/16 :goto_120

    :cond_2d9
    move/from16 v17, v4

    move/from16 v19, v12

    .line 534
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->updateUnresolvedWidgets()V

    move/from16 v0, v17

    :goto_2ea
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v19

    const/4 v4, 0x0

    const/16 v7, 0x20

    const/16 v8, 0x8

    const/4 v9, 0x1

    goto/16 :goto_b0

    .line 536
    :cond_2f6
    check-cast v13, Ljava/util/ArrayList;

    iput-object v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 538
    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_32a

    .line 539
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 540
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 542
    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroidx/constraintlayout/solver/widgets/Snapshot;

    invoke-virtual {v4, v1}, Landroidx/constraintlayout/solver/widgets/Snapshot;->applyTo(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 543
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    add-int/2addr v2, v4

    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 544
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    add-int/2addr v3, v2

    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    goto :goto_32e

    .line 546
    :cond_32a
    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 547
    iput v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mY:I

    :goto_32e
    if-eqz v0, :cond_33a

    .line 550
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aput-object v11, v0, v2

    .line 551
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aput-object v10, v0, v2

    .line 566
    :cond_33a
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/LinearSystem;->getCache()Landroidx/constraintlayout/solver/Cache;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V

    .line 567
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getRootConstraintContainer()Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-result-object v0

    if-ne v1, v0, :cond_34c

    .line 568
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateDrawPosition()V

    :cond_34c
    return-void
.end method

.method public optimize()V
    .registers 2

    const/16 v0, 0x8

    .line 630
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 631
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->analyze(I)V

    .line 643
    :cond_d
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    return-void
.end method

.method public optimizeFor(I)Z
    .registers 3

    .line 131
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public optimizeForDimensions(II)V
    .registers 5

    .line 604
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-eqz v0, :cond_12

    .line 605
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 607
    :cond_12
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p1, v0, :cond_24

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-eqz p1, :cond_24

    .line 608
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    :cond_24
    return-void
.end method

.method public optimizeReset()V
    .registers 4

    .line 613
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 614
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->resetResolutionNodes()V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 616
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetResolutionNodes()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public preOptimize()V
    .registers 2

    .line 573
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeReset()V

    .line 574
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->analyze(I)V

    return-void
.end method

.method public reset()V
    .registers 3

    .line 146
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/LinearSystem;->reset()V

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 148
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    .line 149
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 150
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    .line 151
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 152
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 153
    invoke-super {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->reset()V

    return-void
.end method

.method public setOptimizationLevel(I)V
    .registers 2

    .line 113
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    return-void
.end method

.method public setRtl(Z)V
    .registers 2

    .line 259
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    return-void
.end method

.method public solveGraph()V
    .registers 5

    .line 578
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 579
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 585
    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 586
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    return-void
.end method

.method public updateChildrenFromSolver(Landroidx/constraintlayout/solver/LinearSystem;[Z)V
    .registers 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 222
    aput-boolean v1, p2, v0

    .line 223
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 224
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_47

    .line 226
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 227
    invoke-virtual {v4, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 228
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v1

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_30

    .line 229
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWrapWidth()I

    move-result v6

    if-ge v5, v6, :cond_30

    .line 230
    aput-boolean v7, p2, v0

    .line 232
    :cond_30
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v7

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_44

    .line 233
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWrapHeight()I

    move-result v4

    if-ge v5, v4, :cond_44

    .line 234
    aput-boolean v7, p2, v0

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_47
    return-void
.end method
