.class public Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;
.super Ljava/lang/Object;
.source "CustomEventBannerAdapterFactory.java"


# static fields
.field protected static instance:Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;

    invoke-direct {v0}, Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;->instance:Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;JLcom/mopub/common/AdReport;)Lcom/mopub/mobileads/CustomEventBannerAdapter;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/mopub/common/AdReport;",
            ")",
            "Lcom/mopub/mobileads/CustomEventBannerAdapter;"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;->instance:Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;->internalCreate(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;JLcom/mopub/common/AdReport;)Lcom/mopub/mobileads/CustomEventBannerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static setInstance(Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    sput-object p0, Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;->instance:Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;

    return-void
.end method


# virtual methods
.method protected internalCreate(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;JLcom/mopub/common/AdReport;)Lcom/mopub/mobileads/CustomEventBannerAdapter;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/mopub/common/AdReport;",
            ")",
            "Lcom/mopub/mobileads/CustomEventBannerAdapter;"
        }
    .end annotation

    .line 36
    new-instance v7, Lcom/mopub/mobileads/CustomEventBannerAdapter;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/mopub/mobileads/CustomEventBannerAdapter;-><init>(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;JLcom/mopub/common/AdReport;)V

    return-object v7
.end method
