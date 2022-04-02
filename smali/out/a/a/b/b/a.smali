.class public abstract La/a/b/b/a;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements La/a/d/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/b/b/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field private transient b:La/a/d/a;

.field protected final receiver:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    invoke-static {}, La/a/b/b/a$a;->a()La/a/b/b/a$a;

    move-result-object v0

    sput-object v0, La/a/b/b/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 48
    sget-object v0, La/a/b/b/a;->a:Ljava/lang/Object;

    invoke-direct {p0, v0}, La/a/b/b/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, La/a/b/b/a;->receiver:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()La/a/d/c;
    .registers 2

    .line 89
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 97
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 109
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method protected abstract d()La/a/d/a;
.end method

.method public e()Ljava/lang/Object;
    .registers 2

    .line 60
    iget-object v0, p0, La/a/b/b/a;->receiver:Ljava/lang/Object;

    return-object v0
.end method

.method public f()La/a/d/a;
    .registers 2

    .line 65
    iget-object v0, p0, La/a/b/b/a;->b:La/a/d/a;

    if-nez v0, :cond_a

    .line 67
    invoke-virtual {p0}, La/a/b/b/a;->d()La/a/d/a;

    move-result-object v0

    .line 68
    iput-object v0, p0, La/a/b/b/a;->b:La/a/d/a;

    :cond_a
    return-object v0
.end method
