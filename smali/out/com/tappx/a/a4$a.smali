.class Lcom/tappx/a/a4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/a4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/a4;


# direct methods
.method constructor <init>(Lcom/tappx/a/a4;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/a4$a;->a:Lcom/tappx/a/a4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/a4$a;->a:Lcom/tappx/a/a4;

    invoke-static {v0}, Lcom/tappx/a/a4;->a(Lcom/tappx/a/a4;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2
    iget-object v0, p0, Lcom/tappx/a/a4$a;->a:Lcom/tappx/a/a4;

    invoke-static {v0}, Lcom/tappx/a/a4;->a(Lcom/tappx/a/a4;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/a4$a;->a:Lcom/tappx/a/a4;

    invoke-static {v1}, Lcom/tappx/a/a4;->b(Lcom/tappx/a/a4;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tappx/a/a4$a;->a:Lcom/tappx/a/a4;

    invoke-static {v2}, Lcom/tappx/a/a4;->c(Lcom/tappx/a/a4;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tappx/a/a4$a;->a:Lcom/tappx/a/a4;

    invoke-static {p1}, Lcom/tappx/a/a4;->a(Lcom/tappx/a/a4;)Landroid/media/MediaScannerConnection;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2
    iget-object p1, p0, Lcom/tappx/a/a4$a;->a:Lcom/tappx/a/a4;

    invoke-static {p1}, Lcom/tappx/a/a4;->a(Lcom/tappx/a/a4;)Landroid/media/MediaScannerConnection;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    :cond_11
    return-void
.end method
