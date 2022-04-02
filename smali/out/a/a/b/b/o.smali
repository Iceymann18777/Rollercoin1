.class public La/a/b/b/o;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)La/a/d/b;
    .registers 3

    .line 27
    new-instance v0, La/a/b/b/c;

    invoke-direct {v0, p1}, La/a/b/b/c;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public a(La/a/b/b/g;)La/a/d/d;
    .registers 2

    return-object p1
.end method

.method public a(La/a/b/b/k;)La/a/d/f;
    .registers 2

    return-object p1
.end method

.method public a(La/a/b/b/i;)Ljava/lang/String;
    .registers 3

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "truenet.kotlin.jvm.functions."

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x1d

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1d
    return-object p1
.end method
