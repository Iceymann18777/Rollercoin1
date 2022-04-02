.class Lcom/startapp/android/publish/adsCommon/adinformation/b$3;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/adsCommon/adinformation/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/adsCommon/adinformation/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adsCommon/adinformation/b;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$3;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$3;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/b;->d()V

    .line 127
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$3;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/b;->c()V

    .line 129
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$3;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/adinformation/b;->a(Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_28

    :catch_11
    move-exception v0

    .line 131
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/b$3;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    iget-object v1, v1, Lcom/startapp/android/publish/adsCommon/adinformation/b;->a:Landroid/content/Context;

    new-instance v2, Lcom/startapp/android/publish/adsCommon/f/e;

    sget-object v3, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AdInformationObject.fullPrivacyPolicy failed"

    invoke-direct {v2, v3, v4, v0}, Lcom/startapp/android/publish/adsCommon/f/e;-><init>(Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 131
    invoke-static {v1, v2, v0}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/e;Ljava/lang/String;)V

    :goto_28
    return-void
.end method
