.class public Landroidx/constraintlayout/solver/widgets/Barrier;
.super Landroidx/constraintlayout/solver/widgets/Helper;
.source "Barrier.java"


# instance fields
.field private mAllowsGoneWidget:Z

.field private mBarrierType:I

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/Helper;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .registers 12

    .line 209
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 210
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 211
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 212
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v0, 0x0

    .line 213
    :goto_1d
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v1, v1

    if-ge v0, v1, :cond_33

    .line 214
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v0

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    iput-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 216
    :cond_33
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-ltz v0, :cond_14a

    const/4 v1, 0x4

    if-ge v0, v1, :cond_14a

    .line 217
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    .line 224
    :goto_41
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v1, v6, :cond_76

    .line 225
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v6, v6, v1

    .line 226
    iget-boolean v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v7, :cond_54

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v7

    if-nez v7, :cond_54

    goto :goto_73

    .line 229
    :cond_54
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v7, :cond_5a

    if-ne v7, v4, :cond_64

    .line 230
    :cond_5a
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_64

    :goto_62
    const/4 v1, 0x1

    goto :goto_77

    .line 233
    :cond_64
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eq v7, v3, :cond_6a

    if-ne v7, v5, :cond_73

    .line 234
    :cond_6a
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_73

    goto :goto_62

    :cond_73
    :goto_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_76
    const/4 v1, 0x0

    .line 239
    :goto_77
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v6, :cond_8b

    if-ne v6, v4, :cond_7e

    goto :goto_8b

    .line 244
    :cond_7e
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Barrier;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_98

    goto :goto_97

    .line 240
    :cond_8b
    :goto_8b
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Barrier;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_98

    :goto_97
    const/4 v1, 0x0

    :cond_98
    const/4 v6, 0x0

    .line 248
    :goto_99
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v6, v7, :cond_d3

    .line 249
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v6

    .line 250
    iget-boolean v8, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v8, :cond_ac

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v8

    if-nez v8, :cond_ac

    goto :goto_d0

    .line 253
    :cond_ac
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v9, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v8, v8, v9

    invoke-virtual {p1, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    .line 254
    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v9, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v7, v7, v9

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 255
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v7, :cond_cb

    if-ne v7, v3, :cond_c5

    goto :goto_cb

    .line 258
    :cond_c5
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v7, v8, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Z)V

    goto :goto_d0

    .line 256
    :cond_cb
    :goto_cb
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v7, v8, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Z)V

    :goto_d0
    add-int/lit8 v6, v6, 0x1

    goto :goto_99

    .line 262
    :cond_d3
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v6, 0x5

    const/4 v7, 0x6

    if-nez v0, :cond_f4

    .line 263
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    if-nez v1, :cond_14a

    .line 265
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_14a

    :cond_f4
    if-ne v0, v4, :cond_111

    .line 268
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    if-nez v1, :cond_14a

    .line 270
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_14a

    :cond_111
    if-ne v0, v3, :cond_12e

    .line 273
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    if-nez v1, :cond_14a

    .line 275
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_14a

    :cond_12e
    if-ne v0, v5, :cond_14a

    .line 278
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    if-nez v1, :cond_14a

    .line 280
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v0, v1, v2, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    :cond_14a
    :goto_14a
    return-void
.end method

.method public allowedInBarrier()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public analyze(I)V
    .registers 9

    .line 65
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez p1, :cond_5

    return-void

    .line 68
    :cond_5
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    .line 73
    :cond_11
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_33

    if-eq p1, v2, :cond_2c

    if-eq p1, v0, :cond_25

    if-eq p1, v1, :cond_1e

    return-void

    .line 84
    :cond_1e
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p1

    goto :goto_39

    .line 81
    :cond_25
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p1

    goto :goto_39

    .line 78
    :cond_2c
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p1

    goto :goto_39

    .line 75
    :cond_33
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object p1

    :goto_39
    const/4 v3, 0x5

    .line 89
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 91
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_59

    if-ne v3, v2, :cond_46

    goto :goto_59

    .line 95
    :cond_46
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 96
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    goto :goto_6b

    .line 92
    :cond_59
    :goto_59
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 93
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 99
    :goto_6b
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    .line 100
    :goto_71
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v3, v4, :cond_b8

    .line 101
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v4, v4, v3

    .line 102
    iget-boolean v6, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v6, :cond_84

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v6

    if-nez v6, :cond_84

    goto :goto_b5

    .line 106
    :cond_84
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v6, :cond_a5

    if-eq v6, v2, :cond_9e

    if-eq v6, v0, :cond_97

    if-eq v6, v1, :cond_90

    move-object v4, v5

    goto :goto_ab

    .line 117
    :cond_90
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    goto :goto_ab

    .line 114
    :cond_97
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    goto :goto_ab

    .line 111
    :cond_9e
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    goto :goto_ab

    .line 108
    :cond_a5
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    :goto_ab
    if-eqz v4, :cond_b5

    .line 121
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v4, p1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    :cond_b5
    :goto_b5
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    :cond_b8
    return-void
.end method

.method public resetResolutionNodes()V
    .registers 2

    .line 55
    invoke-super {p0}, Landroidx/constraintlayout/solver/widgets/Helper;->resetResolutionNodes()V

    .line 56
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public resolve()V
    .registers 12

    .line 134
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_28

    if-eq v0, v4, :cond_20

    if-eq v0, v3, :cond_19

    if-eq v0, v2, :cond_12

    return-void

    .line 147
    :cond_12
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    goto :goto_26

    .line 143
    :cond_19
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    goto :goto_2e

    .line 140
    :cond_20
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    :goto_26
    const/4 v1, 0x0

    goto :goto_2e

    .line 136
    :cond_28
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 153
    :goto_2e
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_36
    if-ge v7, v5, :cond_64

    .line 156
    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 157
    iget v9, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-eq v9, v4, :cond_45

    return-void

    .line 160
    :cond_45
    iget v9, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v9, :cond_57

    if-ne v9, v3, :cond_4c

    goto :goto_57

    .line 166
    :cond_4c
    iget v9, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    cmpl-float v9, v9, v1

    if-lez v9, :cond_61

    .line 167
    iget v1, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 168
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    goto :goto_61

    .line 161
    :cond_57
    :goto_57
    iget v9, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    cmpg-float v9, v9, v1

    if-gez v9, :cond_61

    .line 162
    iget v1, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 163
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    :cond_61
    :goto_61
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 173
    :cond_64
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v5

    if-eqz v5, :cond_75

    .line 174
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v5

    iget-wide v7, v5, Landroidx/constraintlayout/solver/Metrics;->barrierConnectionResolved:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v5, Landroidx/constraintlayout/solver/Metrics;->barrierConnectionResolved:J

    .line 180
    :cond_75
    iput-object v6, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 181
    iput v1, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 182
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 183
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v0, :cond_a5

    if-eq v0, v4, :cond_9b

    if-eq v0, v3, :cond_91

    if-eq v0, v2, :cond_87

    return-void

    .line 194
    :cond_87
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    goto :goto_ae

    .line 191
    :cond_91
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    goto :goto_ae

    .line 188
    :cond_9b
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    goto :goto_ae

    .line 185
    :cond_a5
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    :goto_ae
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .registers 2

    .line 49
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return-void
.end method

.method public setBarrierType(I)V
    .registers 2

    .line 46
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    return-void
.end method
