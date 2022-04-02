.class Lcom/tappx/a/p3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/s3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/p3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/p3;


# direct methods
.method constructor <init>(Lcom/tappx/a/p3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/p3$a;->a:Lcom/tappx/a/p3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gtz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-nez v2, :cond_13

    .line 1
    iget-object v3, p0, Lcom/tappx/a/p3$a;->a:Lcom/tappx/a/p3;

    invoke-static {v3}, Lcom/tappx/a/p3;->a(Lcom/tappx/a/p3;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 2
    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/tappx/a/p3$a;->a:Lcom/tappx/a/p3;

    invoke-static {v1, v0}, Lcom/tappx/a/p3;->a(Lcom/tappx/a/p3;Z)V

    if-eqz v2, :cond_1c

    const/4 p1, 0x0

    goto :goto_20

    .line 3
    :cond_1c
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_20
    iget-object v0, p0, Lcom/tappx/a/p3$a;->a:Lcom/tappx/a/p3;

    invoke-static {v0}, Lcom/tappx/a/p3;->b(Lcom/tappx/a/p3;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/tappx/a/p3$a;->a:Lcom/tappx/a/p3;

    invoke-static {p1}, Lcom/tappx/a/p3;->b(Lcom/tappx/a/p3;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
