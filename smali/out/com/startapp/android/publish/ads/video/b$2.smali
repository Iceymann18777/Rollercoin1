.class Lcom/startapp/android/publish/ads/video/b$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/ads/video/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/video/b;->a(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/video/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/video/b;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/b$2;->a:Lcom/startapp/android/publish/ads/video/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b$2;->a:Lcom/startapp/android/publish/ads/video/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/b;->b()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->setLocalVideoPath(Ljava/lang/String;)V

    return-void
.end method
