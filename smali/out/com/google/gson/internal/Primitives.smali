.class public final Lcom/google/gson/internal/Primitives;
.super Ljava/lang/Object;
.source "Primitives.java"


# direct methods
.method public static isPrimitive(Ljava/lang/reflect/Type;)Z
    .registers 2

    .line 34
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_e

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static wrap(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 66
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 67
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_e

    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 68
    :cond_e
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_15

    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 69
    :cond_15
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1c

    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 70
    :cond_1c
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_23

    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 71
    :cond_23
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2a

    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 72
    :cond_2a
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_31

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 73
    :cond_31
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_38

    const-class p0, Ljava/lang/Short;

    return-object p0

    .line 74
    :cond_38
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3e

    const-class p0, Ljava/lang/Void;

    :cond_3e
    return-object p0
.end method
