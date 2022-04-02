.class public Lcom/tappx/a/d2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/tappx/a/y2;

.field private final b:Lcom/tappx/a/n2;


# direct methods
.method public constructor <init>(Lcom/tappx/a/y2;Lcom/tappx/a/n2;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/d2;->a:Lcom/tappx/a/y2;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/d2;->b:Lcom/tappx/a/n2;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d2;->a:Lcom/tappx/a/y2;

    invoke-interface {v0}, Lcom/tappx/a/y2;->a()V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/d2;->b:Lcom/tappx/a/n2;

    invoke-virtual {v0}, Lcom/tappx/a/n2;->a()V

    return-void
.end method
