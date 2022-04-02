.class Lcom/tappx/a/p3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/tappx/a/p3$b;->a:Lcom/tappx/a/p3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tappx/a/p3$b;->a:Lcom/tappx/a/p3;

    invoke-static {p1}, Lcom/tappx/a/p3;->c(Lcom/tappx/a/p3;)V

    return-void
.end method
