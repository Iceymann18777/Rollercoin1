.class public Lcom/mopub/mobileads/factories/MraidControllerFactory;
.super Ljava/lang/Object;
.source "MraidControllerFactory.java"


# static fields
.field protected static instance:Lcom/mopub/mobileads/factories/MraidControllerFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/mopub/mobileads/factories/MraidControllerFactory;

    invoke-direct {v0}, Lcom/mopub/mobileads/factories/MraidControllerFactory;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/factories/MraidControllerFactory;->instance:Lcom/mopub/mobileads/factories/MraidControllerFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)Lcom/mopub/mraid/MraidController;
    .registers 4

    .line 26
    sget-object v0, Lcom/mopub/mobileads/factories/MraidControllerFactory;->instance:Lcom/mopub/mobileads/factories/MraidControllerFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mopub/mobileads/factories/MraidControllerFactory;->internalCreate(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)Lcom/mopub/mraid/MraidController;

    move-result-object p0

    return-object p0
.end method

.method public static setInstance(Lcom/mopub/mobileads/factories/MraidControllerFactory;)V
    .registers 1

    .line 20
    sput-object p0, Lcom/mopub/mobileads/factories/MraidControllerFactory;->instance:Lcom/mopub/mobileads/factories/MraidControllerFactory;

    return-void
.end method


# virtual methods
.method protected internalCreate(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)Lcom/mopub/mraid/MraidController;
    .registers 5

    .line 32
    new-instance v0, Lcom/mopub/mraid/MraidController;

    invoke-direct {v0, p1, p2, p3}, Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V

    return-object v0
.end method
