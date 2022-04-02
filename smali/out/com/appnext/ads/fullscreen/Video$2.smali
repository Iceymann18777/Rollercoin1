.class final Lcom/appnext/ads/fullscreen/Video$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/fullscreen/Video;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bJ:Lcom/appnext/ads/fullscreen/Video;


# direct methods
.method constructor <init>(Lcom/appnext/ads/fullscreen/Video;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/Video$2;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 141
    invoke-static {}, Lcom/appnext/ads/fullscreen/Video;->access$000()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 143
    invoke-static {v0}, Lcom/appnext/ads/fullscreen/Video;->access$002(Z)Z

    .line 144
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appnext/ads/fullscreen/Video$2;->bJ:Lcom/appnext/ads/fullscreen/Video;

    invoke-static {v2}, Lcom/appnext/ads/fullscreen/Video;->access$100(Lcom/appnext/ads/fullscreen/Video;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data/appnext/videos/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appnext/core/f;->a(Ljava/io/File;)V

    return-void
.end method
