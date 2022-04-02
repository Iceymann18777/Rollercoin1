.class public abstract La/a/b/b/j;
.super La/a/b/b/a;
.source "StartAppSDK"

# interfaces
.implements La/a/d/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, La/a/b/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 43
    :cond_4
    instance-of v1, p1, La/a/b/b/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_46

    .line 44
    check-cast p1, La/a/b/b/j;

    .line 45
    invoke-virtual {p0}, La/a/b/b/j;->a()La/a/d/c;

    move-result-object v1

    invoke-virtual {p1}, La/a/b/b/j;->a()La/a/d/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, La/a/b/b/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, La/a/b/b/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, La/a/b/b/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, La/a/b/b/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, La/a/b/b/j;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, La/a/b/b/j;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    goto :goto_45

    :cond_44
    const/4 v0, 0x0

    :goto_45
    return v0

    .line 50
    :cond_46
    instance-of v0, p1, La/a/d/e;

    if-eqz v0, :cond_53

    .line 51
    invoke-virtual {p0}, La/a/b/b/j;->f()La/a/d/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_53
    return v2
.end method

.method public hashCode()I
    .registers 3

    .line 58
    invoke-virtual {p0}, La/a/b/b/j;->a()La/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, La/a/b/b/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, La/a/b/b/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 63
    invoke-virtual {p0}, La/a/b/b/j;->f()La/a/d/a;

    move-result-object v0

    if-eq v0, p0, :cond_b

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/a/b/b/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
