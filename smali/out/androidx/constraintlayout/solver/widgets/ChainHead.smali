.class public Landroidx/constraintlayout/solver/widgets/ChainHead;
.super Ljava/lang/Object;
.source "ChainHead.java"


# instance fields
.field private mDefined:Z

.field protected mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mFirstMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mHasComplexMatchWeights:Z

.field protected mHasDefinedWeights:Z

.field protected mHasUndefinedWeights:Z

.field protected mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mIsRtl:Z

.field protected mLast:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mLastVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mOrientation:I

.field protected mTotalWeight:F

.field protected mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field protected mWidgetsCount:I

.field protected mWidgetsMatchCount:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mIsRtl:Z

    .line 59
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 60
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    .line 61
    iput-boolean p3, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mIsRtl:Z

    return-void
.end method

.method private defineChainProperties()V
    .registers 14

    .line 79
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 80
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v5, 0x0

    :goto_a
    const/4 v6, 0x1

    if-nez v5, :cond_d1

    .line 87
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsCount:I

    add-int/2addr v7, v6

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsCount:I

    .line 88
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v8, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 89
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v8, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    aput-object v9, v7, v8

    .line 90
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_a0

    .line 92
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v7, :cond_2d

    .line 93
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 95
    :cond_2d
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 98
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v8, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    aget-object v7, v7, v8

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_a0

    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    iget v8, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    aget v7, v7, v8

    if-eqz v7, :cond_52

    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    iget v8, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    aget v7, v7, v8

    const/4 v8, 0x3

    if-eq v7, v8, :cond_52

    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    iget v8, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    aget v7, v7, v8

    if-ne v7, v1, :cond_a0

    .line 102
    :cond_52
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    add-int/2addr v7, v6

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 103
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    iget v8, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    aget v7, v7, v8

    const/4 v8, 0x0

    cmpl-float v10, v7, v8

    if-lez v10, :cond_6d

    .line 105
    iget v10, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    iget-object v11, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    iget v12, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    aget v11, v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    .line 108
    :cond_6d
    iget v10, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    invoke-static {v2, v10}, Landroidx/constraintlayout/solver/widgets/ChainHead;->isMatchConstraintEqualityCandidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v10

    if-eqz v10, :cond_8e

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7c

    .line 110
    iput-boolean v6, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    goto :goto_7e

    .line 112
    :cond_7c
    iput-boolean v6, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasDefinedWeights:Z

    .line 114
    :goto_7e
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    if-nez v7, :cond_89

    .line 115
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 117
    :cond_89
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_8e
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v7, :cond_94

    .line 121
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 123
    :cond_94
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v7, :cond_9e

    .line 124
    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v8, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    aput-object v2, v7, v8

    .line 126
    :cond_9e
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :cond_a0
    if-eq v4, v2, :cond_a8

    .line 130
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v7, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    aput-object v2, v4, v7

    .line 135
    :cond_a8
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, v0, 0x1

    aget-object v4, v4, v7

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_c8

    .line 137
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 138
    iget-object v7, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_c8

    iget-object v7, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eq v7, v2, :cond_c7

    goto :goto_c8

    :cond_c7
    move-object v9, v4

    :cond_c8
    :goto_c8
    if-eqz v9, :cond_cb

    goto :goto_cd

    :cond_cb
    move-object v9, v2

    const/4 v5, 0x1

    :goto_cd
    move-object v4, v2

    move-object v2, v9

    goto/16 :goto_a

    .line 151
    :cond_d1
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLast:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 153
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    if-nez v0, :cond_de

    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mIsRtl:Z

    if-eqz v0, :cond_de

    .line 154
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    goto :goto_e2

    .line 156
    :cond_de
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 159
    :goto_e2
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasDefinedWeights:Z

    if-eqz v0, :cond_eb

    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v0, :cond_eb

    const/4 v3, 0x1

    :cond_eb
    iput-boolean v3, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    return-void
.end method

.method private static isMatchConstraintEqualityCandidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z
    .registers 4

    .line 72
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v0, v0, p1

    if-eqz v0, :cond_1d

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget p0, p0, p1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1f

    :cond_1d
    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method


# virtual methods
.method public define()V
    .registers 2

    .line 195
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mDefined:Z

    if-nez v0, :cond_7

    .line 196
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ChainHead;->defineChainProperties()V

    :cond_7
    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mDefined:Z

    return-void
.end method
