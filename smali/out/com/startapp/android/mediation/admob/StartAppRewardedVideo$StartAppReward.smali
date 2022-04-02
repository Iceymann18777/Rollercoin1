.class Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$StartAppReward;
.super Ljava/lang/Object;
.source "StartAppRewardedVideo.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartAppReward"
.end annotation


# instance fields
.field private final mAmount:I

.field private final mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;


# direct methods
.method constructor <init>(Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;Ljava/lang/String;I)V
    .registers 4

    .line 33
    iput-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$StartAppReward;->this$0:Lcom/startapp/android/mediation/admob/StartAppRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$StartAppReward;->mType:Ljava/lang/String;

    .line 35
    iput p3, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$StartAppReward;->mAmount:I

    return-void
.end method


# virtual methods
.method public getAmount()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$StartAppReward;->mAmount:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppRewardedVideo$StartAppReward;->mType:Ljava/lang/String;

    return-object v0
.end method
