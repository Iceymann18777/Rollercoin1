.class public final Lcom/mopub/mobileads/VideoTrackingEvent$Companion;
.super Ljava/lang/Object;
.source "VideoTrackingEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VideoTrackingEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoTrackingEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoTrackingEvent.kt\ncom/mopub/mobileads/VideoTrackingEvent$Companion\n*L\n1#1,36:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/mopub/mobileads/VideoTrackingEvent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromString(Ljava/lang/String;)Lcom/mopub/mobileads/VideoTrackingEvent;
    .registers 8

    .line 22
    invoke-static {}, Lcom/mopub/mobileads/VideoTrackingEvent;->values()[Lcom/mopub/mobileads/VideoTrackingEvent;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/mopub/mobileads/VideoTrackingEvent;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, p1, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_1a

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    if-eqz v3, :cond_1d

    goto :goto_1f

    :cond_1d
    sget-object v3, Lcom/mopub/mobileads/VideoTrackingEvent;->UNKNOWN:Lcom/mopub/mobileads/VideoTrackingEvent;

    :goto_1f
    return-object v3
.end method
