.class Lcom/startapp/android/publish/adsCommon/h/c$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/h/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/adsCommon/j/b;

.field final synthetic b:Lcom/startapp/android/publish/adsCommon/h/c;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adsCommon/h/c;Lcom/startapp/android/publish/adsCommon/j/b;)V
    .registers 3

    .line 23
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/h/c$1;->b:Lcom/startapp/android/publish/adsCommon/h/c;

    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/h/c$1;->a:Lcom/startapp/android/publish/adsCommon/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 26
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/h/c$1;->a:Lcom/startapp/android/publish/adsCommon/j/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/j/b;->b()V

    .line 27
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/h/c$1;->b:Lcom/startapp/android/publish/adsCommon/h/c;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/h/c$1;->a:Lcom/startapp/android/publish/adsCommon/j/b;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/j/b;->c()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/h/c;->a(Ljava/lang/Object;)V

    return-void
.end method
