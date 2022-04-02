.class Lcom/startapp/android/publish/adsCommon/h/b$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/h/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/adsCommon/c/b;

.field final synthetic b:Lcom/startapp/android/publish/adsCommon/h/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adsCommon/h/b;Lcom/startapp/android/publish/adsCommon/c/b;)V
    .registers 3

    .line 26
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/h/b$1;->b:Lcom/startapp/android/publish/adsCommon/h/b;

    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/h/b$1;->a:Lcom/startapp/android/publish/adsCommon/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/h/b$1;->a:Lcom/startapp/android/publish/adsCommon/c/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/c/b;->a()V

    .line 30
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/h/b$1;->b:Lcom/startapp/android/publish/adsCommon/h/b;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/h/b$1;->a:Lcom/startapp/android/publish/adsCommon/c/b;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/c/b;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/h/b;->a(Ljava/lang/Object;)V

    return-void
.end method
