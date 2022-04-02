.class Lcom/tappx/a/z;
.super Lcom/tappx/a/z5;
.source "SourceFile"


# instance fields
.field private final b:Lcom/tappx/a/a0;


# direct methods
.method constructor <init>(Lcom/tappx/a/a0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/z5;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/z;->b:Lcom/tappx/a/a0;

    return-void
.end method


# virtual methods
.method public a()Lcom/tappx/a/a0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/z;->b:Lcom/tappx/a/a0;

    return-object v0
.end method
