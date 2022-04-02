.class final enum Lcom/mopub/mobileads/VastResource$Type;
.super Ljava/lang/Enum;
.source "VastResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/VastResource$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/VastResource$Type;

.field public static final enum HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

.field public static final enum IFRAME_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

.field public static final enum STATIC_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 34
    new-instance v0, Lcom/mopub/mobileads/VastResource$Type;

    const-string v1, "STATIC_RESOURCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/VastResource$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastResource$Type;->STATIC_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    .line 35
    new-instance v0, Lcom/mopub/mobileads/VastResource$Type;

    const-string v1, "HTML_RESOURCE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mopub/mobileads/VastResource$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    .line 36
    new-instance v0, Lcom/mopub/mobileads/VastResource$Type;

    const-string v1, "IFRAME_RESOURCE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mopub/mobileads/VastResource$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastResource$Type;->IFRAME_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/mopub/mobileads/VastResource$Type;

    .line 33
    sget-object v5, Lcom/mopub/mobileads/VastResource$Type;->STATIC_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    aput-object v5, v1, v2

    sget-object v2, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/mopub/mobileads/VastResource$Type;->$VALUES:[Lcom/mopub/mobileads/VastResource$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/VastResource$Type;
    .registers 2

    .line 33
    const-class v0, Lcom/mopub/mobileads/VastResource$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/VastResource$Type;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/VastResource$Type;
    .registers 1

    .line 33
    sget-object v0, Lcom/mopub/mobileads/VastResource$Type;->$VALUES:[Lcom/mopub/mobileads/VastResource$Type;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/VastResource$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/VastResource$Type;

    return-object v0
.end method
