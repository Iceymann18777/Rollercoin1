.class public final Lcom/mopub/common/MoPubReward;
.super Ljava/lang/Object;
.source "MoPubReward.java"


# static fields
.field public static final DEFAULT_REWARD_AMOUNT:I = 0x0

.field public static final NO_REWARD_AMOUNT:I = -0x7b

.field public static final NO_REWARD_LABEL:Ljava/lang/String; = ""


# instance fields
.field private final mAmount:I

.field private final mLabel:Ljava/lang/String;

.field private final mSuccess:Z


# direct methods
.method private constructor <init>(ZLjava/lang/String;I)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/mopub/common/MoPubReward;->mSuccess:Z

    .line 36
    iput-object p2, p0, Lcom/mopub/common/MoPubReward;->mLabel:Ljava/lang/String;

    .line 37
    iput p3, p0, Lcom/mopub/common/MoPubReward;->mAmount:I

    return-void
.end method

.method public static failure()Lcom/mopub/common/MoPubReward;
    .registers 3

    .line 42
    new-instance v0, Lcom/mopub/common/MoPubReward;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2, v1}, Lcom/mopub/common/MoPubReward;-><init>(ZLjava/lang/String;I)V

    return-object v0
.end method

.method public static success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;
    .registers 4

    .line 47
    new-instance v0, Lcom/mopub/common/MoPubReward;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/mopub/common/MoPubReward;-><init>(ZLjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final getAmount()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/mopub/common/MoPubReward;->mAmount:I

    return v0
.end method

.method public final getLabel()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/mopub/common/MoPubReward;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final isSuccessful()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/mopub/common/MoPubReward;->mSuccess:Z

    return v0
.end method
