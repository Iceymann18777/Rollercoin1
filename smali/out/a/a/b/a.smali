.class public final La/a/b/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static final a(La/a/d/b;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/a/d/b<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    check-cast p0, La/a/b/b/b;

    invoke-interface {p0}, La/a/b/b/b;->a()Ljava/lang/Class;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T>"

    if-nez v0, :cond_1c

    if-eqz p0, :cond_16

    return-object p0

    :cond_16
    new-instance p0, La/a/h;

    invoke-direct {p0, v1}, La/a/h;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    goto/16 :goto_8e

    :cond_24
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_98

    goto :goto_8e

    :sswitch_2c
    const-string v2, "short"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 65
    const-class p0, Ljava/lang/Short;

    goto :goto_8e

    :sswitch_37
    const-string v2, "float"

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 67
    const-class p0, Ljava/lang/Float;

    goto :goto_8e

    :sswitch_42
    const-string v2, "boolean"

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 62
    const-class p0, Ljava/lang/Boolean;

    goto :goto_8e

    :sswitch_4d
    const-string v2, "void"

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 70
    const-class p0, Ljava/lang/Void;

    goto :goto_8e

    :sswitch_58
    const-string v2, "long"

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 68
    const-class p0, Ljava/lang/Long;

    goto :goto_8e

    :sswitch_63
    const-string v2, "char"

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 63
    const-class p0, Ljava/lang/Character;

    goto :goto_8e

    :sswitch_6e
    const-string v2, "byte"

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 64
    const-class p0, Ljava/lang/Byte;

    goto :goto_8e

    :sswitch_79
    const-string v2, "int"

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 66
    const-class p0, Ljava/lang/Integer;

    goto :goto_8e

    :sswitch_84
    const-string v2, "double"

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 69
    const-class p0, Ljava/lang/Double;

    :cond_8e
    :goto_8e
    if-eqz p0, :cond_91

    return-object p0

    .line 61
    :cond_91
    new-instance p0, La/a/h;

    invoke-direct {p0, v1}, La/a/h;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_98
    .sparse-switch
        -0x4f08842f -> :sswitch_84
        0x197ef -> :sswitch_79
        0x2e6108 -> :sswitch_6e
        0x2e9356 -> :sswitch_63
        0x32c67c -> :sswitch_58
        0x375194 -> :sswitch_4d
        0x3db6c28 -> :sswitch_42
        0x5d0225c -> :sswitch_37
        0x685847c -> :sswitch_2c
    .end sparse-switch
.end method
