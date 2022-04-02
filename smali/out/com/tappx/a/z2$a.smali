.class Lcom/tappx/a/z2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/z2;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tappx/a/z2;


# direct methods
.method constructor <init>(Lcom/tappx/a/z2;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tappx/a/z2$a;->b:Lcom/tappx/a/z2;

    iput-boolean p2, p0, Lcom/tappx/a/z2$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/z2$a;->b:Lcom/tappx/a/z2;

    iget-boolean v1, p0, Lcom/tappx/a/z2$a;->a:Z

    invoke-static {v0, v1}, Lcom/tappx/a/z2;->a(Lcom/tappx/a/z2;Z)V

    return-void
.end method
