.class public Landroidx/constraintlayout/solver/LinearSystem;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/LinearSystem$Row;
    }
.end annotation


# static fields
.field private static POOL_SIZE:I = 0x3e8

.field public static sMetrics:Landroidx/constraintlayout/solver/Metrics;


# instance fields
.field private TABLE_SIZE:I

.field public graphOptimizer:Z

.field private mAlreadyTestedCandidates:[Z

.field final mCache:Landroidx/constraintlayout/solver/Cache;

.field private mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

.field private mMaxColumns:I

.field private mMaxRows:I

.field mNumColumns:I

.field mNumRows:I

.field private mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

.field private mPoolVariablesCount:I

.field mRows:[Landroidx/constraintlayout/solver/ArrayRow;

.field private final mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field mVariablesID:I

.field private tempClientsCopy:[Landroidx/constraintlayout/solver/ArrayRow;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    const/16 v2, 0x20

    .line 54
    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    .line 55
    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    .line 56
    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 59
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    new-array v1, v2, [Z

    .line 62
    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    const/4 v1, 0x1

    .line 64
    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 65
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 66
    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    .line 70
    sget v1, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    new-array v1, v1, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 71
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    new-array v0, v2, [Landroidx/constraintlayout/solver/ArrayRow;

    .line 73
    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->tempClientsCopy:[Landroidx/constraintlayout/solver/ArrayRow;

    new-array v0, v2, [Landroidx/constraintlayout/solver/ArrayRow;

    .line 79
    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 80
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->releaseRows()V

    .line 81
    new-instance v0, Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/Cache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 82
    new-instance v1, Landroidx/constraintlayout/solver/GoalRow;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/solver/GoalRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    .line 83
    new-instance v0, Landroidx/constraintlayout/solver/ArrayRow;

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    return-void
.end method

.method private acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 5

    .line 305
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->solverVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v0, :cond_15

    .line 307
    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable;

    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;-><init>(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->setType(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    goto :goto_1b

    .line 310
    :cond_15
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    .line 311
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->setType(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    .line 313
    :goto_1b
    iget p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    sget p2, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    if-lt p1, p2, :cond_2f

    mul-int/lit8 p2, p2, 0x2

    .line 314
    sput p2, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    .line 315
    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 317
    :cond_2f
    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget p2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method private addError(Landroidx/constraintlayout/solver/ArrayRow;)V
    .registers 3

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p1, p0, v0}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    return-void
.end method

.method private final addRow(Landroidx/constraintlayout/solver/ArrayRow;)V
    .registers 5

    .line 538
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_15

    .line 539
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 541
    :cond_15
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    aput-object p1, v0, v1

    .line 542
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 543
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 544
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method private computeValues()V
    .registers 4

    const/4 v0, 0x0

    .line 847
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v0, v1, :cond_12

    .line 848
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v1, v1, v0

    .line 849
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v1, v1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iput v1, v2, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public static createRowDimensionPercent(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FZ)Landroidx/constraintlayout/solver/ArrayRow;
    .registers 7

    .line 1230
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    if-eqz p5, :cond_9

    .line 1232
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addError(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1234
    :cond_9
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionPercent(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object p0

    return-object p0
.end method

.method private enforceBFS(Landroidx/constraintlayout/solver/LinearSystem$Row;)I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 713
    :goto_3
    iget v3, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_24

    .line 714
    iget-object v3, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 715
    iget-object v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v6, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v3, v6, :cond_15

    goto :goto_21

    .line 718
    :cond_15
    iget-object v3, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v3, v2

    iget v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_21

    const/4 v2, 0x1

    goto :goto_25

    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_24
    const/4 v2, 0x0

    :goto_25
    if-eqz v2, :cond_cb

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_29
    if-nez v2, :cond_c9

    .line 736
    sget-object v6, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    const-wide/16 v7, 0x1

    if-eqz v6, :cond_36

    .line 737
    iget-wide v9, v6, Landroidx/constraintlayout/solver/Metrics;->bfs:J

    add-long/2addr v9, v7

    iput-wide v9, v6, Landroidx/constraintlayout/solver/Metrics;->bfs:J

    :cond_36
    add-int/lit8 v3, v3, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 748
    :goto_40
    iget v14, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v10, v14, :cond_96

    .line 749
    iget-object v14, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v14, v14, v10

    .line 750
    iget-object v15, v14, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 751
    iget-object v15, v15, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v15, v1, :cond_51

    goto :goto_90

    .line 756
    :cond_51
    iget-boolean v1, v14, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v1, :cond_56

    goto :goto_90

    .line 759
    :cond_56
    iget v1, v14, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_90

    const/4 v1, 0x1

    .line 764
    :goto_5d
    iget v15, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    if-ge v1, v15, :cond_90

    .line 765
    iget-object v15, v0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v15, v15, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v15, v15, v1

    .line 766
    iget-object v5, v14, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v5, v15}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v5

    cmpg-float v16, v5, v4

    if-gtz v16, :cond_72

    goto :goto_8a

    :cond_72
    const/4 v4, 0x0

    :goto_73
    const/4 v7, 0x7

    if-ge v4, v7, :cond_8a

    .line 774
    iget-object v7, v15, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    aget v7, v7, v4

    div-float/2addr v7, v5

    cmpg-float v8, v7, v6

    if-gez v8, :cond_81

    if-eq v4, v13, :cond_83

    :cond_81
    if-le v4, v13, :cond_87

    :cond_83
    move v12, v1

    move v13, v4

    move v6, v7

    move v11, v10

    :cond_87
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    :cond_8a
    :goto_8a
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    const-wide/16 v7, 0x1

    goto :goto_5d

    :cond_90
    :goto_90
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    const-wide/16 v7, 0x1

    goto :goto_40

    :cond_96
    if-eq v11, v9, :cond_be

    .line 788
    iget-object v1, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v1, v1, v11

    .line 793
    iget-object v4, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iput v9, v4, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 794
    sget-object v4, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v4, :cond_ab

    .line 795
    iget-wide v5, v4, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 797
    :cond_ab
    iget-object v4, v0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v4, v4, v12

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 798
    iget-object v4, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iput v11, v4, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 799
    iget-object v4, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v4, v1}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_bf

    :cond_be
    const/4 v2, 0x1

    .line 808
    :goto_bf
    iget v1, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_c6

    const/4 v2, 0x1

    :cond_c6
    const/4 v4, 0x0

    goto/16 :goto_29

    :cond_c9
    move v1, v3

    goto :goto_cc

    :cond_cb
    const/4 v1, 0x0

    :goto_cc
    return v1
.end method

.method public static getMetrics()Landroidx/constraintlayout/solver/Metrics;
    .registers 1

    .line 91
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    return-object v0
.end method

.method private increaseTableSize()V
    .registers 6

    .line 112
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    .line 113
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 114
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v0, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v1, v0, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 115
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    new-array v1, v0, [Z

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 116
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    .line 117
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    .line 118
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_46

    .line 119
    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->tableSizeIncrease:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->tableSizeIncrease:J

    .line 120
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    .line 121
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->lastTableSize:J

    :cond_46
    return-void
.end method

.method private final optimize(Landroidx/constraintlayout/solver/LinearSystem$Row;Z)I
    .registers 16

    .line 559
    sget-object p2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    const-wide/16 v0, 0x1

    if-eqz p2, :cond_b

    .line 560
    iget-wide v2, p2, Landroidx/constraintlayout/solver/Metrics;->optimize:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Landroidx/constraintlayout/solver/Metrics;->optimize:J

    :cond_b
    const/4 p2, 0x0

    const/4 v2, 0x0

    .line 564
    :goto_d
    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    if-ge v2, v3, :cond_18

    .line 565
    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    aput-boolean p2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_18
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1a
    if-nez v2, :cond_b6

    .line 577
    sget-object v4, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v4, :cond_25

    .line 578
    iget-wide v5, v4, Landroidx/constraintlayout/solver/Metrics;->iterations:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroidx/constraintlayout/solver/Metrics;->iterations:J

    :cond_25
    add-int/lit8 v3, v3, 0x1

    .line 585
    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_2e

    return v3

    .line 589
    :cond_2e
    invoke-interface {p1}, Landroidx/constraintlayout/solver/LinearSystem$Row;->getKey()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3f

    .line 590
    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    invoke-interface {p1}, Landroidx/constraintlayout/solver/LinearSystem$Row;->getKey()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    iget v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput-boolean v5, v4, v6

    .line 592
    :cond_3f
    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    invoke-interface {p1, p0, v4}, Landroidx/constraintlayout/solver/LinearSystem$Row;->getPivotCandidate(Landroidx/constraintlayout/solver/LinearSystem;[Z)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    if-eqz v4, :cond_56

    .line 598
    iget-object v6, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    iget v7, v4, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_50

    return v3

    .line 601
    :cond_50
    iget-object v6, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    iget v7, v4, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput-boolean v5, v6, v7

    :cond_56
    if-eqz v4, :cond_b3

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 622
    :goto_5e
    iget v10, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v8, v10, :cond_92

    .line 623
    iget-object v10, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v10, v10, v8

    .line 624
    iget-object v11, v10, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 625
    iget-object v11, v11, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v12, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v11, v12, :cond_6f

    goto :goto_8f

    .line 629
    :cond_6f
    iget-boolean v11, v10, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v11, :cond_74

    goto :goto_8f

    .line 633
    :cond_74
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/solver/ArrayRow;->hasVariable(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v11

    if-eqz v11, :cond_8f

    .line 639
    iget-object v11, v10, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v11, v4}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v11

    const/4 v12, 0x0

    cmpg-float v12, v11, v12

    if-gez v12, :cond_8f

    .line 641
    iget v10, v10, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    neg-float v10, v10

    div-float/2addr v10, v11

    cmpg-float v11, v10, v6

    if-gez v11, :cond_8f

    move v9, v8

    move v6, v10

    :cond_8f
    :goto_8f
    add-int/lit8 v8, v8, 0x1

    goto :goto_5e

    :cond_92
    if-le v9, v7, :cond_b3

    .line 656
    iget-object v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v5, v5, v9

    .line 657
    iget-object v6, v5, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iput v7, v6, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 658
    sget-object v6, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v6, :cond_a5

    .line 659
    iget-wide v7, v6, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    add-long/2addr v7, v0

    iput-wide v7, v6, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 661
    :cond_a5
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 662
    iget-object v4, v5, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iput v9, v4, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 663
    iget-object v4, v5, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto/16 :goto_1a

    :cond_b3
    const/4 v2, 0x1

    goto/16 :goto_1a

    :cond_b6
    return v3
.end method

.method private releaseRows()V
    .registers 4

    const/4 v0, 0x0

    .line 129
    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    array-length v2, v1

    if-ge v0, v2, :cond_19

    .line 130
    aget-object v1, v1, v0

    if-eqz v1, :cond_11

    .line 132
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 134
    :cond_11
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method private final updateRowFromVariables(Landroidx/constraintlayout/solver/ArrayRow;)V
    .registers 4

    .line 448
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-lez v0, :cond_14

    .line 449
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->updateFromSystem(Landroidx/constraintlayout/solver/ArrayRow;[Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 450
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v0, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 451
    iput-boolean v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    :cond_14
    return-void
.end method


# virtual methods
.method public addCenterPoint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1329
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    .line 1330
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    .line 1331
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    .line 1332
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    .line 1334
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 1335
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    .line 1336
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v12

    .line 1337
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v10

    .line 1339
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v2

    move/from16 v4, p3

    float-to-double v13, v4

    .line 1340
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move/from16 v4, p4

    move-object/from16 v17, v3

    int-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-object/from16 p1, v12

    mul-double v11, v15, v3

    double-to-float v11, v11

    move-object v6, v2

    .line 1341
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/solver/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1342
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1343
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v2

    .line 1344
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v3

    double-to-float v9, v6

    move-object v4, v2

    move-object/from16 v6, v17

    move-object v7, v1

    move-object/from16 v8, p1

    .line 1345
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/solver/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1346
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .registers 20

    move-object v0, p0

    move/from16 v1, p8

    .line 1098
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v10

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 1099
    invoke-virtual/range {v2 .. v9}, Landroidx/constraintlayout/solver/ArrayRow;->createRowCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1b

    .line 1101
    invoke-virtual {v10, p0, v1}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1103
    :cond_1b
    invoke-virtual {p0, v10}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 464
    :cond_3
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_19

    .line 465
    iget-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->constraints:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->constraints:J

    .line 466
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v0, :cond_19

    .line 467
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->simpleconstraints:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->simpleconstraints:J

    .line 470
    :cond_19
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    if-ge v0, v4, :cond_28

    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/2addr v0, v3

    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v4, :cond_2b

    .line 471
    :cond_28
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    :cond_2b
    const/4 v0, 0x0

    .line 478
    iget-boolean v4, p1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v4, :cond_89

    .line 480
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/LinearSystem;->updateRowFromVariables(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 482
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/ArrayRow;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3a

    return-void

    .line 487
    :cond_3a
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/ArrayRow;->ensurePositiveConstant()V

    .line 494
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/ArrayRow;->chooseSubject(Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 496
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createExtraVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 497
    iput-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 498
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/LinearSystem;->addRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 500
    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-interface {v4, p1}, Landroidx/constraintlayout/solver/LinearSystem$Row;->initFromRow(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    .line 501
    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-direct {p0, v4, v3}, Landroidx/constraintlayout/solver/LinearSystem;->optimize(Landroidx/constraintlayout/solver/LinearSystem$Row;Z)I

    .line 502
    iget v4, v0, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_81

    .line 506
    iget-object v4, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-ne v4, v0, :cond_71

    .line 508
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/ArrayRow;->pickPivot(Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 510
    sget-object v4, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v4, :cond_6e

    .line 511
    iget-wide v5, v4, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    add-long/2addr v5, v1

    iput-wide v5, v4, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 513
    :cond_6e
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 516
    :cond_71
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v0, :cond_7a

    .line 517
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 519
    :cond_7a
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    goto :goto_81

    :cond_80
    const/4 v3, 0x0

    .line 523
    :cond_81
    :goto_81
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/ArrayRow;->hasKeyVariable()Z

    move-result v0

    if-nez v0, :cond_88

    return-void

    :cond_88
    move v0, v3

    :cond_89
    if-nez v0, :cond_8e

    .line 533
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/LinearSystem;->addRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    :cond_8e
    return-void
.end method

.method public addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    .registers 6

    .line 1128
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1129
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_d

    .line 1131
    invoke-virtual {v0, p0, p4}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1133
    :cond_d
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-object v0
.end method

.method public addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V
    .registers 6

    .line 1146
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 1147
    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2b

    .line 1148
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v0, v1, v0

    .line 1149
    iget-boolean v1, v0, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v1, :cond_13

    int-to-float p1, p2

    .line 1150
    iput p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto :goto_35

    .line 1152
    :cond_13
    iget-object v1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v1, v1, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v1, :cond_20

    const/4 p1, 0x1

    .line 1153
    iput-boolean p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    int-to-float p1, p2

    .line 1154
    iput p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto :goto_35

    .line 1156
    :cond_20
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1157
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1158
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_35

    .line 1162
    :cond_2b
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1163
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDefinition(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1164
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    :goto_35
    return-void
.end method

.method public addGreaterBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Z)V
    .registers 7

    .line 1029
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1030
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    .line 1031
    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1032
    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    if-eqz p3, :cond_1f

    .line 1035
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x1

    .line 1036
    invoke-virtual {p0, v0, p1, p2}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 1038
    :cond_1f
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .registers 8

    .line 1003
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1004
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    .line 1005
    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1006
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_1f

    .line 1008
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 1009
    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 1011
    :cond_1f
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addLowerBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Z)V
    .registers 7

    .line 1067
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1068
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    .line 1069
    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1070
    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/constraintlayout/solver/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    if-eqz p3, :cond_1f

    .line 1073
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x1

    .line 1074
    invoke-virtual {p0, v0, p1, p2}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 1076
    :cond_1f
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .registers 8

    .line 1052
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1053
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    .line 1054
    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1055
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_1f

    .line 1057
    iget-object p1, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 1058
    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 1060
    :cond_1f
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method public addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V
    .registers 14

    .line 1110
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1111
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    const/4 p1, 0x6

    if-eq p6, p1, :cond_13

    .line 1113
    invoke-virtual {v6, p0, p6}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1115
    :cond_13
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    return-void
.end method

.method addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V
    .registers 5

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, p3, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p3

    .line 259
    invoke-virtual {p1, p3, p2}, Landroidx/constraintlayout/solver/ArrayRow;->addSingleError(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    return-void
.end method

.method public createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 8

    .line 283
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_b

    .line 284
    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->errors:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->errors:J

    .line 286
    :cond_b
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_16

    .line 287
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 289
    :cond_16
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-direct {p0, v0, p2}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p2

    .line 290
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 291
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 292
    iput v0, p2, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 293
    iput p1, p2, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 294
    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object p1, p1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object p2, p1, v0

    .line 295
    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-interface {p1, p2}, Landroidx/constraintlayout/solver/LinearSystem$Row;->addError(Landroidx/constraintlayout/solver/SolverVariable;)V

    return-object p2
.end method

.method public createExtraVariable()Landroidx/constraintlayout/solver/SolverVariable;
    .registers 6

    .line 226
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_b

    .line 227
    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->extravariables:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->extravariables:J

    .line 229
    :cond_b
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_16

    .line 230
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 232
    :cond_16
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 233
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 234
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 235
    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 236
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 173
    :cond_4
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v1, v2, :cond_f

    .line 174
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 177
    :cond_f
    instance-of v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_5b

    .line 178
    check-cast p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    if-nez v0, :cond_25

    .line 180
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 181
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p1

    move-object v0, p1

    .line 183
    :cond_25
    iget p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3a

    iget p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    if-gt p1, v2, :cond_3a

    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object p1, p1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-object p1, p1, v2

    if-nez p1, :cond_5b

    .line 186
    :cond_3a
    iget p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-eq p1, v1, :cond_41

    .line 187
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    .line 189
    :cond_41
    iget p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 190
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 191
    iput p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 192
    sget-object p1, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iput-object p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 193
    iget-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object p1, p1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object v0, p1, v1

    :cond_5b
    return-object v0
.end method

.method public createRow()Landroidx/constraintlayout/solver/ArrayRow;
    .registers 3

    .line 200
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/ArrayRow;

    if-nez v0, :cond_14

    .line 202
    new-instance v0, Landroidx/constraintlayout/solver/ArrayRow;

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    goto :goto_17

    .line 204
    :cond_14
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/ArrayRow;->reset()V

    .line 206
    :goto_17
    invoke-static {}, Landroidx/constraintlayout/solver/SolverVariable;->increaseErrorId()V

    return-object v0
.end method

.method public createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;
    .registers 6

    .line 211
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_b

    .line 212
    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->slackvariables:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->slackvariables:J

    .line 214
    :cond_b
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_16

    .line 215
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 217
    :cond_16
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 218
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 219
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 220
    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 221
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public getCache()Landroidx/constraintlayout/solver/Cache;
    .registers 2

    .line 967
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    return-object v0
.end method

.method public getObjectVariableValue(Ljava/lang/Object;)I
    .registers 3

    .line 344
    check-cast p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 346
    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public minimize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 377
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_b

    .line 378
    iget-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->minimize:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->minimize:J

    .line 383
    :cond_b
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    if-eqz v0, :cond_40

    .line 384
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_18

    .line 385
    iget-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->graphOptimizer:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->graphOptimizer:J

    :cond_18
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 388
    :goto_1a
    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_2a

    .line 389
    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v4, v4, v3

    .line 390
    iget-boolean v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v4, :cond_27

    goto :goto_2b

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_2a
    const/4 v0, 0x1

    :goto_2b
    if-nez v0, :cond_33

    .line 396
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    goto :goto_45

    .line 398
    :cond_33
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_3c

    .line 399
    iget-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->fullySolved:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->fullySolved:J

    .line 401
    :cond_3c
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->computeValues()V

    goto :goto_45

    .line 404
    :cond_40
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    :goto_45
    return-void
.end method

.method minimizeGoal(Landroidx/constraintlayout/solver/LinearSystem$Row;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 416
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_25

    .line 417
    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->minimizeGoal:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->minimizeGoal:J

    .line 418
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxVariables:J

    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxVariables:J

    .line 419
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxRows:J

    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxRows:J

    .line 426
    :cond_25
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/solver/ArrayRow;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->updateRowFromVariables(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 430
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/LinearSystem;->enforceBFS(Landroidx/constraintlayout/solver/LinearSystem$Row;)I

    const/4 v0, 0x0

    .line 435
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->optimize(Landroidx/constraintlayout/solver/LinearSystem$Row;Z)I

    .line 440
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->computeValues()V

    return-void
.end method

.method public reset()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 142
    :goto_2
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 143
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, v1

    if-eqz v2, :cond_14

    .line 145
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 148
    :cond_17
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->solverVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    invoke-interface {v1, v2, v3}, Landroidx/constraintlayout/solver/Pools$Pool;->releaseAll([Ljava/lang/Object;I)V

    .line 149
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    .line 151
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-eqz v1, :cond_33

    .line 153
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 155
    :cond_33
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 156
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-interface {v1}, Landroidx/constraintlayout/solver/LinearSystem$Row;->clear()V

    const/4 v1, 0x1

    .line 157
    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v1, 0x0

    .line 158
    :goto_3e
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v1, v2, :cond_4b

    .line 159
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v2, v1

    iput-boolean v0, v2, Landroidx/constraintlayout/solver/ArrayRow;->used:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 161
    :cond_4b
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->releaseRows()V

    .line 162
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    return-void
.end method
