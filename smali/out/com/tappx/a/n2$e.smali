.class Lcom/tappx/a/n2$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/i2$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/n2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/n2;


# direct methods
.method constructor <init>(Lcom/tappx/a/n2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/n2$e;->a:Lcom/tappx/a/n2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 1
    iget-object p1, p0, Lcom/tappx/a/n2$e;->a:Lcom/tappx/a/n2;

    invoke-static {p1}, Lcom/tappx/a/n2;->b(Lcom/tappx/a/n2;)Lcom/tappx/a/q2;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tappx/a/q2;->b(Z)V

    .line 2
    :cond_c
    iget-object p1, p0, Lcom/tappx/a/n2$e;->a:Lcom/tappx/a/n2;

    invoke-static {p1, v0}, Lcom/tappx/a/n2;->a(Lcom/tappx/a/n2;Z)Z

    return-void
.end method
