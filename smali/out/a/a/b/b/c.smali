.class public final La/a/b/b/c;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements La/a/b/b/b;
.implements La/a/d/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b/b/b;",
        "La/a/d/b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/b/c;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, La/a/b/b/c;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 78
    instance-of v0, p1, La/a/b/b/c;

    if-eqz v0, :cond_16

    invoke-static {p0}, La/a/b/a;->a(La/a/d/b;)Ljava/lang/Class;

    move-result-object v0

    check-cast p1, La/a/d/b;

    invoke-static {p1}, La/a/b/a;->a(La/a/d/b;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 81
    invoke-static {p0}, La/a/b/a;->a(La/a/d/b;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, La/a/b/b/c;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
