.class Lcom/tappx/a/w$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/f0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/a/w;->a(JLcom/tappx/a/p2;Lcom/tappx/a/m;Lcom/tappx/a/h;)Lcom/tappx/a/v$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/h;


# direct methods
.method constructor <init>(Lcom/tappx/a/w;Lcom/tappx/a/h;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/tappx/a/w$h;->a:Lcom/tappx/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tappx/a/a0;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tappx/a/w$h;->a:Lcom/tappx/a/h;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/tappx/a/h;->a(Ljava/lang/Object;)V

    return-void
.end method
