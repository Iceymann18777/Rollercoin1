.class Lcom/startapp/android/publish/ads/video/d$3;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/ads/video/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/video/d;->b(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/ads/video/g$a;Lcom/startapp/android/publish/ads/video/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/video/c$a;

.field final synthetic b:Lcom/startapp/android/publish/ads/video/d;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/video/d;Lcom/startapp/android/publish/ads/video/c$a;)V
    .registers 3

    .line 79
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/d$3;->b:Lcom/startapp/android/publish/ads/video/d;

    iput-object p2, p0, Lcom/startapp/android/publish/ads/video/d$3;->a:Lcom/startapp/android/publish/ads/video/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/d$3;->a:Lcom/startapp/android/publish/ads/video/c$a;

    if-eqz v0, :cond_7

    .line 83
    invoke-interface {v0, p1}, Lcom/startapp/android/publish/ads/video/c$a;->a(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
