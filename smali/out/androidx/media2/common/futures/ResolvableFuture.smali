.class public final Landroidx/media2/common/futures/ResolvableFuture;
.super Landroidx/media2/common/futures/AbstractResolvableFuture;
.source "ResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/media2/common/futures/AbstractResolvableFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Landroidx/media2/common/futures/AbstractResolvableFuture;-><init>()V

    return-void
.end method

.method public static create()Landroidx/media2/common/futures/ResolvableFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/media2/common/futures/ResolvableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Landroidx/media2/common/futures/ResolvableFuture;

    invoke-direct {v0}, Landroidx/media2/common/futures/ResolvableFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public set(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Landroidx/media2/common/futures/AbstractResolvableFuture;->set(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
