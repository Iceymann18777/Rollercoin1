.class Lcom/tappx/a/g2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/f3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/g2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/a/g2;


# direct methods
.method constructor <init>(Lcom/tappx/a/g2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/g2$b;->a:Lcom/tappx/a/g2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/g2$b;->a:Lcom/tappx/a/g2;

    invoke-static {v0}, Lcom/tappx/a/g2;->c(Lcom/tappx/a/g2;)V

    return-void
.end method
