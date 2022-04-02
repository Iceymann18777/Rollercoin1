.class public Lcom/mopub/common/factories/MethodBuilderFactory;
.super Ljava/lang/Object;
.source "MethodBuilderFactory.java"


# static fields
.field protected static instance:Lcom/mopub/common/factories/MethodBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lcom/mopub/common/factories/MethodBuilderFactory;

    invoke-direct {v0}, Lcom/mopub/common/factories/MethodBuilderFactory;-><init>()V

    sput-object v0, Lcom/mopub/common/factories/MethodBuilderFactory;->instance:Lcom/mopub/common/factories/MethodBuilderFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;
    .registers 3

    .line 18
    sget-object v0, Lcom/mopub/common/factories/MethodBuilderFactory;->instance:Lcom/mopub/common/factories/MethodBuilderFactory;

    invoke-virtual {v0, p0, p1}, Lcom/mopub/common/factories/MethodBuilderFactory;->internalCreate(Ljava/lang/Object;Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static setInstance(Lcom/mopub/common/factories/MethodBuilderFactory;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    sput-object p0, Lcom/mopub/common/factories/MethodBuilderFactory;->instance:Lcom/mopub/common/factories/MethodBuilderFactory;

    return-void
.end method


# virtual methods
.method protected internalCreate(Ljava/lang/Object;Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;
    .registers 4

    .line 22
    new-instance v0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    invoke-direct {v0, p1, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
