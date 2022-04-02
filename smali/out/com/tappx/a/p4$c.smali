.class Lcom/tappx/a/p4$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/p4;->k()V
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
    iput-object p1, p0, Lcom/tappx/a/p4$c;->a:Lcom/tappx/a/p4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tappx/a/p4$c;->a:Lcom/tappx/a/p4;

    invoke-virtual {p1}, Lcom/tappx/a/n3;->b()Lcom/tappx/a/n3$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/tappx/a/n3$a;->onFinish()V

    return-void
.end method
