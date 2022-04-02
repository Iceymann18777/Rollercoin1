.class Lcom/tappx/a/k4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/r3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/k4;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tappx/a/k4$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tappx/a/k4$c;


# direct methods
.method constructor <init>(Lcom/tappx/a/k4;Landroid/content/Context;Lcom/tappx/a/k4$c;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lcom/tappx/a/k4$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tappx/a/k4$b;->b:Lcom/tappx/a/k4$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/k4$b;->a:Landroid/content/Context;

    const-string v1, "Image downloaded"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/k4$b;->a:Landroid/content/Context;

    const-string v1, "Image download failed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/k4$b;->b:Lcom/tappx/a/k4$c;

    new-instance v1, Lcom/tappx/a/f4;

    const-string v2, "Download error"

    invoke-direct {v1, v2}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tappx/a/k4$c;->a(Lcom/tappx/a/f4;)V

    return-void
.end method
