.class public Landroidx/constraintlayout/solver/widgets/Analyzer;
.super Ljava/lang/Object;
.source "Analyzer.java"


# direct methods
.method public static determineGroups(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .registers 11

    .line 45
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v0

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_d

    .line 46
    invoke-static {p0}, Landroidx/constraintlayout/solver/widgets/Analyzer;->singleGroup(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    return-void

    :cond_d
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 51
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 52
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 53
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 54
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    .line 55
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_25

    const/4 v4, 0x1

    goto :goto_26

    :cond_25
    const/4 v4, 0x0

    .line 56
    :goto_26
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_30

    const/4 v5, 0x1

    goto :goto_31

    :cond_30
    const/4 v5, 0x0

    :goto_31
    if-nez v4, :cond_38

    if-eqz v5, :cond_36

    goto :goto_38

    :cond_36
    const/4 v6, 0x0

    goto :goto_39

    :cond_38
    :goto_38
    const/4 v6, 0x1

    .line 58
    :goto_39
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 60
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_40
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_55

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v9, 0x0

    .line 61
    iput-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    .line 62
    iput-boolean v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 63
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetResolutionNodes()V

    goto :goto_40

    .line 65
    :cond_55
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 66
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    if-nez v8, :cond_59

    .line 67
    invoke-static {v7, v3, v6}, Landroidx/constraintlayout/solver/widgets/Analyzer;->determineGroups(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/List;Z)Z

    move-result v7

    if-nez v7, :cond_59

    .line 68
    invoke-static {p0}, Landroidx/constraintlayout/solver/widgets/Analyzer;->singleGroup(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 69
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    return-void

    .line 77
    :cond_75
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_98

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    .line 79
    invoke-static {v8, v1}, Landroidx/constraintlayout/solver/widgets/Analyzer;->getMaxDimension(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;I)I

    move-result v9

    .line 78
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 81
    invoke-static {v8, v0}, Landroidx/constraintlayout/solver/widgets/Analyzer;->getMaxDimension(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;I)I

    move-result v8

    .line 80
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_7b

    :cond_98
    if-eqz v4, :cond_a8

    .line 85
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 86
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 87
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 88
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 89
    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    :cond_a8
    if-eqz v5, :cond_b8

    .line 92
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 93
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 94
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 95
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 96
    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    .line 98
    :cond_b8
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v2

    invoke-static {v3, v1, v2}, Landroidx/constraintlayout/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    .line 99
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result p0

    invoke-static {v3, v0, p0}, Landroidx/constraintlayout/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    return-void
.end method

.method private static determineGroups(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/List;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/List<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;",
            ">;Z)Z"
        }
    .end annotation

    .line 110
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;-><init>(Ljava/util/List;Z)V

    .line 111
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {p0, v0, p1, p2}, Landroidx/constraintlayout/solver/widgets/Analyzer;->traverse(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z

    move-result p0

    return p0
.end method

.method private static getMaxDimension(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;I)I
    .registers 11

    mul-int/lit8 v0, p1, 0x2

    .line 276
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->getStartWidgets(I)Ljava/util/List;

    move-result-object v1

    .line 277
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    if-ge v4, v2, :cond_3e

    .line 279
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 280
    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v8, v0, 0x1

    aget-object v7, v7, v8

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_32

    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_30

    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v8

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_30

    goto :goto_32

    :cond_30
    const/4 v7, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v7, 0x1

    .line 283
    :goto_33
    invoke-static {v6, p1, v7, v3}, Landroidx/constraintlayout/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZI)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 286
    :cond_3e
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupDimensions:[I

    aput v5, p0, p1

    return v5
.end method

.method private static getMaxDimensionTraversal(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZI)I
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 304
    iget-boolean v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    const/4 v4, 0x0

    if-nez v3, :cond_c

    return v4

    .line 316
    :cond_c
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v5, 0x1

    if-eqz v3, :cond_17

    if-ne v1, v5, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    if-eqz v2, :cond_2c

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v6

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v8

    sub-int/2addr v7, v8

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v9, v8, 0x1

    goto :goto_3d

    .line 324
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v7

    sub-int/2addr v6, v7

    .line 325
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v7

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v8, v9, 0x1

    .line 332
    :goto_3d
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, v9

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_54

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, v8

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_54

    const/4 v10, -0x1

    move/from16 v19, v9

    move v9, v8

    move/from16 v8, v19

    goto :goto_55

    :cond_54
    const/4 v10, 0x1

    :goto_55
    if-eqz v3, :cond_5a

    sub-int v12, p3, v6

    goto :goto_5c

    :cond_5a
    move/from16 v12, p3

    .line 345
    :goto_5c
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, v8

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    mul-int v13, v13, v10

    invoke-static/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/Analyzer;->getParentBiasOffset(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    if-nez v1, :cond_73

    .line 347
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    goto :goto_77

    :cond_73
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    :goto_77
    mul-int v14, v14, v10

    .line 348
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v15, v15, v8

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v15

    iget-object v15, v15, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_87
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/constraintlayout/solver/widgets/ResolutionNode;

    .line 349
    move-object/from16 v11, v17

    check-cast v11, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 350
    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-static {v11, v1, v2, v12}, Landroidx/constraintlayout/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZI)I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_87

    .line 352
    :cond_a4
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, v9

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v11

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v15, 0x0

    :goto_b3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/constraintlayout/solver/widgets/ResolutionNode;

    .line 353
    move-object/from16 v5, v17

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 354
    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 p3, v11

    add-int v11, v14, v12

    invoke-static {v5, v1, v2, v11}, Landroidx/constraintlayout/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZI)I

    move-result v5

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v11, p3

    const/4 v5, 0x1

    goto :goto_b3

    :cond_d7
    if-eqz v3, :cond_dd

    sub-int/2addr v4, v6

    add-int/2addr v15, v7

    :goto_db
    const/4 v5, 0x1

    goto :goto_ec

    :cond_dd
    if-nez v1, :cond_e4

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    goto :goto_e8

    :cond_e4
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    :goto_e8
    mul-int v5, v5, v10

    add-int/2addr v15, v5

    goto :goto_db

    :goto_ec
    if-ne v1, v5, :cond_160

    .line 366
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v11

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/16 v18, 0x0

    :goto_fc
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_141

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/constraintlayout/solver/widgets/ResolutionNode;

    move-object/from16 p3, v11

    .line 367
    move-object/from16 v11, v16

    check-cast v11, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-ne v10, v5, :cond_125

    .line 369
    iget-object v5, v11, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    add-int v11, v6, v12

    invoke-static {v5, v1, v2, v11}, Landroidx/constraintlayout/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZI)I

    move-result v5

    move/from16 v11, v18

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v18, v5

    move/from16 v17, v9

    goto :goto_13b

    :cond_125
    move/from16 v5, v18

    .line 371
    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    mul-int v16, v7, v10

    move/from16 v17, v9

    add-int v9, v16, v12

    invoke-static {v11, v1, v2, v9}, Landroidx/constraintlayout/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZI)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v18, v5

    :goto_13b
    move-object/from16 v11, p3

    move/from16 v9, v17

    const/4 v5, 0x1

    goto :goto_fc

    :cond_141
    move/from16 v17, v9

    move/from16 v5, v18

    .line 374
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v9

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    if-lez v9, :cond_15e

    if-nez v3, :cond_15e

    const/4 v3, 0x1

    if-ne v10, v3, :cond_15b

    add-int v3, v5, v6

    goto :goto_163

    :cond_15b
    sub-int v3, v5, v7

    goto :goto_163

    :cond_15e
    move v3, v5

    goto :goto_163

    :cond_160
    move/from16 v17, v9

    const/4 v3, 0x0

    .line 384
    :goto_163
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v13, v3

    add-int/2addr v14, v12

    const/4 v3, -0x1

    if-ne v10, v3, :cond_175

    move/from16 v19, v14

    move v14, v12

    move/from16 v12, v19

    :cond_175
    if-eqz v2, :cond_17e

    .line 393
    invoke-static {v0, v1, v12}, Landroidx/constraintlayout/solver/widgets/Optimizer;->setOptimizedWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;II)V

    .line 394
    invoke-virtual {v0, v12, v14, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFrame(III)V

    goto :goto_186

    .line 396
    :cond_17e
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->addWidgetsToSet(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 397
    invoke-virtual {v0, v12, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setRelativePositioning(II)V

    .line 400
    :goto_186
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_19a

    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_19a

    .line 402
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->addWidgetsToSet(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 405
    :cond_19a
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v8

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1c7

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v17

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1c7

    .line 407
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 408
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v8

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v3, v2, :cond_1c7

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v17

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v3, v2, :cond_1c7

    .line 410
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->addWidgetsToSet(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    :cond_1c7
    return v13
.end method

.method private static getParentBiasOffset(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .registers 6

    mul-int/lit8 v0, p1, 0x2

    .line 506
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    .line 507
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v2, v0

    .line 508
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_45

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v2, v3, :cond_45

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_45

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v2, v3, :cond_45

    .line 513
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result v2

    if-nez p1, :cond_2f

    .line 514
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_31

    :cond_2f
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 516
    :goto_31
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result p0

    .line 517
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result p1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p0

    int-to-float p0, v2

    mul-float p0, p0, v3

    float-to-int p0, p0

    return p0

    :cond_45
    const/4 p0, 0x0

    return p0
.end method

.method private static invalidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;)V
    .registers 4

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    .line 261
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 262
    iput-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    return-void
.end method

.method private static resolveDimensionRatio(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)I
    .registers 3

    .line 533
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_23

    .line 534
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    if-nez v0, :cond_16

    .line 535
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float v0, v0, v1

    goto :goto_1e

    .line 537
    :cond_16
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    div-float/2addr v0, v1

    :goto_1e
    float-to-int v0, v0

    .line 539
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_48

    .line 540
    :cond_23
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_47

    .line 541
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3a

    .line 542
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float v0, v0, v1

    goto :goto_42

    .line 544
    :cond_3a
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    div-float/2addr v0, v1

    :goto_42
    float-to-int v0, v0

    .line 546
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_48

    :cond_47
    const/4 v0, -0x1

    :goto_48
    return v0
.end method

.method private static setConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V
    .registers 3

    .line 417
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 418
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v1, p0, :cond_17

    .line 420
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    :cond_17
    return-void
.end method

.method public static setPosition(Ljava/util/List;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;",
            ">;II)V"
        }
    .end annotation

    .line 444
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2c

    .line 446
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    .line 447
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->getWidgetsToSet(I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 449
    iget-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    if-eqz v4, :cond_15

    .line 450
    invoke-static {v3, p1, p2}, Landroidx/constraintlayout/solver/widgets/Analyzer;->updateSizeDependentWidgets(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;II)V

    goto :goto_15

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2c
    return-void
.end method

.method private static singleGroup(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .registers 3

    .line 431
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 432
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    new-instance v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;-><init>(Ljava/util/List;)V

    const/4 p0, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private static traverse(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;",
            "Ljava/util/List<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    .line 131
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    .line 132
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 133
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    if-nez v3, :cond_216

    .line 135
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 136
    iget-object v3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    .line 139
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_44

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_44

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_44

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_44

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_44

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_44

    .line 145
    invoke-static {v2, p0, p1}, Landroidx/constraintlayout/solver/widgets/Analyzer;->invalidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;)V

    if-eqz p3, :cond_44

    return v1

    .line 151
    :cond_44
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_77

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_77

    .line 153
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz p3, :cond_5c

    .line 155
    invoke-static {v2, p0, p1}, Landroidx/constraintlayout/solver/widgets/Analyzer;->invalidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;)V

    return v1

    .line 157
    :cond_5c
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v3, v4, :cond_74

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 158
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-eq v3, v4, :cond_77

    .line 159
    :cond_74
    invoke-static {v2, p0, p1}, Landroidx/constraintlayout/solver/widgets/Analyzer;->invalidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;)V

    .line 163
    :cond_77
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_aa

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_aa

    .line 165
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz p3, :cond_8f

    .line 167
    invoke-static {v2, p0, p1}, Landroidx/constraintlayout/solver/widgets/Analyzer;->invalidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;)V

    return v1

    .line 169
    :cond_8f
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v3, v4, :cond_a7

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 170
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-eq v3, v4, :cond_aa

    .line 171
    :cond_a7
    invoke-static {v2, p0, p1}, Landroidx/constraintlayout/solver/widgets/Analyzer;->invalidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;)V

    .line 174
    :cond_aa
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_b4

    const/4 v3, 0x1

    goto :goto_b5

    :cond_b4
    const/4 v3, 0x0

    .line 175
    :goto_b5
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_bf

    const/4 v4, 0x1

    goto :goto_c0

    :cond_bf
    const/4 v4, 0x0

    :goto_c0
    xor-int/2addr v3, v4

    if-eqz v3, :cond_ce

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_ce

    .line 178
    invoke-static {p0}, Landroidx/constraintlayout/solver/widgets/Analyzer;->resolveDimensionRatio(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)I

    goto :goto_e4

    .line 179
    :cond_ce
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_de

    .line 180
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_e4

    .line 181
    :cond_de
    invoke-static {v2, p0, p1}, Landroidx/constraintlayout/solver/widgets/Analyzer;->invalidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;)V

    if-eqz p3, :cond_e4

    return v1

    .line 187
    :cond_e4
    :goto_e4
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_f0

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_13c

    :cond_f0
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_106

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_106

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_13c

    :cond_106
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_11c

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_11c

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_13c

    :cond_11c
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_14f

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_14f

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_14f

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_14f

    :cond_13c
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_14f

    .line 193
    instance-of v3, p0, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v3, :cond_14f

    instance-of v3, p0, Landroidx/constraintlayout/solver/widgets/Helper;

    if-nez v3, :cond_14f

    .line 194
    iget-object v3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_14f
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_15b

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1a7

    :cond_15b
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_171

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_171

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1a7

    :cond_171
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_187

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_187

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1a7

    :cond_187
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1c0

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_1c0

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1c0

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v3, v4, :cond_1c0

    :cond_1a7
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1c0

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1c0

    .line 205
    instance-of v3, p0, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v3, :cond_1c0

    instance-of v3, p0, Landroidx/constraintlayout/solver/widgets/Helper;

    if-nez v3, :cond_1c0

    .line 206
    iget-object v3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_1c0
    instance-of v3, p0, Landroidx/constraintlayout/solver/widgets/Helper;

    if-eqz v3, :cond_1e0

    .line 227
    invoke-static {v2, p0, p1}, Landroidx/constraintlayout/solver/widgets/Analyzer;->invalidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;)V

    if-eqz p3, :cond_1ca

    return v1

    .line 231
    :cond_1ca
    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/solver/widgets/Helper;

    const/4 v4, 0x0

    .line 232
    :goto_1ce
    iget v5, v3, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    if-ge v4, v5, :cond_1e0

    .line 233
    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v4

    invoke-static {v5, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/Analyzer;->traverse(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z

    move-result v5

    if-nez v5, :cond_1dd

    return v1

    :cond_1dd
    add-int/lit8 v4, v4, 0x1

    goto :goto_1ce

    .line 239
    :cond_1e0
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v3, v3

    const/4 v4, 0x0

    :goto_1e4
    if-ge v4, v3, :cond_215

    .line 241
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v4

    .line 242
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_212

    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    if-eq v6, v7, :cond_212

    .line 243
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v6, v7, :cond_204

    .line 244
    invoke-static {v2, p0, p1}, Landroidx/constraintlayout/solver/widgets/Analyzer;->invalidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;)V

    if-eqz p3, :cond_207

    return v1

    .line 249
    :cond_204
    invoke-static {v5}, Landroidx/constraintlayout/solver/widgets/Analyzer;->setConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    .line 251
    :cond_207
    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-static {v5, p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/Analyzer;->traverse(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z

    move-result v5

    if-nez v5, :cond_212

    return v1

    :cond_212
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e4

    :cond_215
    return v0

    .line 211
    :cond_216
    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    if-eq p3, p1, :cond_259

    .line 212
    iget-object p3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget-object p3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    iget-object p3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    iget-boolean p3, p3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    if-nez p3, :cond_23d

    .line 216
    iput-boolean v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    .line 218
    :cond_23d
    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 219
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_259

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 220
    iput-object p1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    goto :goto_24a

    :cond_259
    return v0
.end method

.method private static updateSizeDependentWidgets(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;II)V
    .registers 9

    mul-int/lit8 v0, p1, 0x2

    .line 468
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    .line 469
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    .line 470
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x1

    if-eqz v3, :cond_17

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    if-eqz v3, :cond_27

    .line 472
    invoke-static {p0, p1}, Landroidx/constraintlayout/solver/widgets/Analyzer;->getParentBiasOffset(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result p2

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    add-int/2addr p2, v0

    .line 473
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/Optimizer;->setOptimizedWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;II)V

    return-void

    .line 481
    :cond_27
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_62

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_62

    .line 482
    invoke-static {p0}, Landroidx/constraintlayout/solver/widgets/Analyzer;->resolveDimensionRatio(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)I

    move-result p2

    .line 483
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    float-to-int v0, v0

    add-int v3, v0, p2

    .line 485
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iput-object v1, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 486
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    int-to-float p2, p2

    iput p2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 487
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p2

    iput v4, p2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    .line 488
    invoke-virtual {p0, v0, v3, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFrame(III)V

    return-void

    .line 491
    :cond_62
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRelativePositioning(I)I

    move-result v0

    sub-int/2addr p2, v0

    .line 492
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result v0

    sub-int v0, p2, v0

    .line 493
    invoke-virtual {p0, v0, p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFrame(III)V

    .line 494
    invoke-static {p0, p1, v0}, Landroidx/constraintlayout/solver/widgets/Optimizer;->setOptimizedWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;II)V

    return-void
.end method
