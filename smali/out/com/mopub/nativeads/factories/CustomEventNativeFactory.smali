.class public Lcom/mopub/nativeads/factories/CustomEventNativeFactory;
.super Ljava/lang/Object;
.source "CustomEventNativeFactory.java"


# static fields
.field protected static instance:Lcom/mopub/nativeads/factories/CustomEventNativeFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;

    invoke-direct {v0}, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;->instance:Lcom/mopub/nativeads/factories/CustomEventNativeFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/mopub/nativeads/CustomEventNative;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_13

    .line 21
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/mopub/nativeads/CustomEventNative;

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 23
    sget-object v0, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;->instance:Lcom/mopub/nativeads/factories/CustomEventNativeFactory;

    invoke-virtual {v0, p0}, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;->internalCreate(Ljava/lang/Class;)Lcom/mopub/nativeads/CustomEventNative;

    move-result-object p0

    return-object p0

    .line 25
    :cond_13
    new-instance p0, Lcom/mopub/nativeads/MoPubCustomEventNative;

    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative;-><init>()V

    return-object p0
.end method

.method public static setInstance(Lcom/mopub/nativeads/factories/CustomEventNativeFactory;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    sput-object p0, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;->instance:Lcom/mopub/nativeads/factories/CustomEventNativeFactory;

    return-void
.end method


# virtual methods
.method protected internalCreate(Ljava/lang/Class;)Lcom/mopub/nativeads/CustomEventNative;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/nativeads/CustomEventNative;",
            ">;)",
            "Lcom/mopub/nativeads/CustomEventNative;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 42
    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/nativeads/CustomEventNative;

    return-object p1
.end method
