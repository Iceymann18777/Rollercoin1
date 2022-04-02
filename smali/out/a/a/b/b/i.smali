.class public abstract La/a/b/b/i;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements La/a/b/b/f;


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/a/b/b/i;->arity:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 11
    invoke-static {p0}, La/a/b/b/n;->a(La/a/b/b/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
