.class public Lcom/startapp/android/publish/common/metaData/PeriodicMetaDataService;
.super Landroid/app/IntentService;
.source "StartAppSDK"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    const-class v0, Lcom/startapp/android/publish/common/metaData/PeriodicMetaDataService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method
