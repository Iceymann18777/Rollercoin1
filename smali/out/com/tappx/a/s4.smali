.class public Lcom/tappx/a/s4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/s4$a;
    }
.end annotation


# direct methods
.method public static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_c

    .line 1
    :try_start_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_6} :catch_7

    return-object p0

    .line 3
    :catch_7
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_c
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    goto :goto_13

    :goto_12
    throw p0

    :goto_13
    goto :goto_12
.end method
