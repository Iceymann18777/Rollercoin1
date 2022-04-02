.class public La/a/b/b/g;
.super La/a/b/b/a;
.source "StartAppSDK"

# interfaces
.implements La/a/b/b/f;
.implements La/a/d/d;


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 21
    invoke-direct {p0, p2}, La/a/b/b/a;-><init>(Ljava/lang/Object;)V

    .line 22
    iput p1, p0, La/a/b/b/g;->arity:I

    return-void
.end method


# virtual methods
.method protected d()La/a/d/a;
    .registers 2

    .line 39
    invoke-static {p0}, La/a/b/b/n;->a(La/a/b/b/g;)La/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 75
    :cond_4
    instance-of v1, p1, La/a/b/b/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_53

    .line 76
    check-cast p1, La/a/b/b/g;

    .line 78
    invoke-virtual {p0}, La/a/b/b/g;->a()La/a/d/c;

    move-result-object v1

    if-nez v1, :cond_18

    invoke-virtual {p1}, La/a/b/b/g;->a()La/a/d/c;

    move-result-object v1

    if-nez v1, :cond_51

    goto :goto_26

    :cond_18
    invoke-virtual {p0}, La/a/b/b/g;->a()La/a/d/c;

    move-result-object v1

    invoke-virtual {p1}, La/a/b/b/g;->a()La/a/d/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    :goto_26
    invoke-virtual {p0}, La/a/b/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, La/a/b/b/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-virtual {p0}, La/a/b/b/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, La/a/b/b/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-virtual {p0}, La/a/b/b/g;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, La/a/b/b/g;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    return v0

    .line 83
    :cond_53
    instance-of v0, p1, La/a/d/d;

    if-eqz v0, :cond_60

    .line 84
    invoke-virtual {p0}, La/a/b/b/g;->f()La/a/d/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_60
    return v2
.end method

.method public hashCode()I
    .registers 3

    .line 91
    invoke-virtual {p0}, La/a/b/b/g;->a()La/a/d/c;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_12

    :cond_8
    invoke-virtual {p0}, La/a/b/b/g;->a()La/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    :goto_12
    invoke-virtual {p0}, La/a/b/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, La/a/b/b/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 96
    invoke-virtual {p0}, La/a/b/b/g;->f()La/a/d/a;

    move-result-object v0

    if-eq v0, p0, :cond_b

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :cond_b
    invoke-virtual {p0}, La/a/b/b/g;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "constructor (Kotlin reflection is not available)"

    goto :goto_34

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "function "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/a/b/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_34
    return-object v0
.end method
