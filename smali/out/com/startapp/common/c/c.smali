.class public Lcom/startapp/common/c/c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static a(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 4

    .line 16
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 17
    array-length v0, v0

    if-lez v0, :cond_2f

    .line 18
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 19
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/startapp/common/c/f;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 20
    check-cast v0, Lcom/startapp/common/c/f;

    .line 21
    invoke-interface {v0}, Lcom/startapp/common/c/f;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 22
    invoke-interface {v0}, Lcom/startapp/common/c/f;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 26
    :cond_2f
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Z
    .registers 2

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 54
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-class v0, Ljava/lang/Integer;

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-class v0, Ljava/lang/Character;

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-class v0, Ljava/lang/Byte;

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-class v0, Ljava/lang/Short;

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-class v0, Ljava/lang/Double;

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-class v0, Ljava/lang/Long;

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-class v0, Ljava/lang/Float;

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-class v0, Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    goto :goto_4f

    :cond_4d
    const/4 p0, 0x0

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 p0, 0x1

    :goto_50
    return p0
.end method

.method public static b(Ljava/lang/reflect/Field;)Z
    .registers 2

    .line 30
    const-class v0, Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/reflect/Field;)Z
    .registers 2

    .line 34
    const-class v0, Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/reflect/Field;)Z
    .registers 2

    .line 38
    const-class v0, Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/reflect/Field;)Z
    .registers 4

    .line 42
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 43
    array-length v0, v0

    if-nez v0, :cond_b

    goto :goto_25

    .line 45
    :cond_b
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    aget-object p0, p0, v1

    .line 46
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/startapp/common/c/f;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    return v1

    .line 48
    :cond_1e
    check-cast p0, Lcom/startapp/common/c/f;

    .line 49
    invoke-interface {p0}, Lcom/startapp/common/c/f;->a()Z

    move-result p0

    return p0

    :cond_25
    :goto_25
    return v1
.end method
