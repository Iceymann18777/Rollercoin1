.class public final Lcom/tappx/a/e2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method constructor <init>(IZ)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    if-gez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    if-le p1, v0, :cond_d

    const/16 p1, 0x64

    .line 4
    :cond_d
    :goto_d
    iput p1, p0, Lcom/tappx/a/e2$a;->a:I

    .line 5
    iput-boolean p2, p0, Lcom/tappx/a/e2$a;->b:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/e2$a;->a:I

    return v0
.end method

.method public b()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/e2$a;->b:Z

    return v0
.end method
