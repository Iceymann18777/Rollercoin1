.class Lcom/startapp/android/publish/adsCommon/f/g$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/f/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/adsCommon/f/g;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adsCommon/f/g;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/f/g$1;->a:Lcom/startapp/android/publish/adsCommon/f/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/g$1;->a:Lcom/startapp/android/publish/adsCommon/f/g;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/f/g;->b()Z

    move-result v0

    .line 37
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/g$1;->a:Lcom/startapp/android/publish/adsCommon/f/g;

    invoke-static {v1}, Lcom/startapp/android/publish/adsCommon/f/g;->a(Lcom/startapp/android/publish/adsCommon/f/g;)Lcom/startapp/android/publish/adsCommon/f/g$a;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 38
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/g$1;->a:Lcom/startapp/android/publish/adsCommon/f/g;

    invoke-static {v1}, Lcom/startapp/android/publish/adsCommon/f/g;->a(Lcom/startapp/android/publish/adsCommon/f/g;)Lcom/startapp/android/publish/adsCommon/f/g$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/startapp/android/publish/adsCommon/f/g$a;->a(Z)V

    :cond_17
    return-void
.end method
