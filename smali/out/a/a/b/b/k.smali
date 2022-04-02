.class public abstract La/a/b/b/k;
.super La/a/b/b/j;
.source "StartAppSDK"

# interfaces
.implements La/a/d/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, La/a/b/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected d()La/a/d/a;
    .registers 2

    .line 23
    invoke-static {p0}, La/a/b/b/n;->a(La/a/b/b/k;)La/a/d/f;

    move-result-object v0

    return-object v0
.end method
