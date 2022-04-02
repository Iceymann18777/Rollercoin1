.class Lcom/tappx/a/p4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/p4;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/tappx/a/n3$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/p4;


# direct methods
.method constructor <init>(Lcom/tappx/a/p4;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/p4$b;->a:Lcom/tappx/a/p4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/tappx/a/p4$b;->a:Lcom/tappx/a/p4;

    invoke-static {p1}, Lcom/tappx/a/p4;->a(Lcom/tappx/a/p4;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/tappx/a/p4$b;->a:Lcom/tappx/a/p4;

    invoke-static {p1}, Lcom/tappx/a/p4;->a(Lcom/tappx/a/p4;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :cond_12
    iget-object p1, p0, Lcom/tappx/a/p4$b;->a:Lcom/tappx/a/p4;

    invoke-virtual {p1, p2}, Lcom/tappx/a/n3;->b(Z)V

    return p2
.end method
