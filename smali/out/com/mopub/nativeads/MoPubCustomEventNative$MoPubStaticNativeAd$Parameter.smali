.class final enum Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;
.super Ljava/lang/Enum;
.source "MoPubCustomEventNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Parameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

.field public static final enum CALL_TO_ACTION:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

.field public static final enum CLICK_DESTINATION:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

.field public static final enum CLICK_TRACKER:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

.field public static final enum FALLBACK:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

.field public static final enum ICON_IMAGE:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

.field public static final enum IMPRESSION_TRACKER:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

.field public static final enum MAIN_IMAGE:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

.field public static final enum PRIVACY_INFORMATION_ICON_CLICKTHROUGH_URL:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

.field public static final enum PRIVACY_INFORMATION_ICON_IMAGE_URL:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

.field public static final enum SPONSORED:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

.field public static final enum STAR_RATING:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

.field public static final enum TEXT:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

.field public static final enum TITLE:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

.field static final requiredKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final name:Ljava/lang/String;

.field final required:Z


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 122
    new-instance v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    const-string v1, "IMPRESSION_TRACKER"

    const/4 v2, 0x0

    const-string v3, "imptracker"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->IMPRESSION_TRACKER:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    .line 123
    new-instance v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    const-string v1, "CLICK_TRACKER"

    const-string v3, "clktracker"

    invoke-direct {v0, v1, v4, v3, v4}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->CLICK_TRACKER:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    .line 125
    new-instance v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    const-string v1, "TITLE"

    const/4 v3, 0x2

    const-string v5, "title"

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->TITLE:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    .line 126
    new-instance v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    const-string v1, "TEXT"

    const/4 v5, 0x3

    const-string v6, "text"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->TEXT:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    .line 127
    new-instance v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    const-string v1, "MAIN_IMAGE"

    const/4 v6, 0x4

    const-string v7, "mainimage"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->MAIN_IMAGE:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    .line 128
    new-instance v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    const-string v1, "ICON_IMAGE"

    const/4 v7, 0x5

    const-string v8, "iconimage"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->ICON_IMAGE:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    .line 130
    new-instance v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    const-string v1, "CLICK_DESTINATION"

    const/4 v8, 0x6

    const-string v9, "clk"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->CLICK_DESTINATION:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    .line 131
    new-instance v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    const-string v1, "FALLBACK"

    const/4 v9, 0x7

    const-string v10, "fallback"

    invoke-direct {v0, v1, v9, v10, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->FALLBACK:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    .line 132
    new-instance v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    const-string v1, "CALL_TO_ACTION"

    const/16 v10, 0x8

    const-string v11, "ctatext"

    invoke-direct {v0, v1, v10, v11, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->CALL_TO_ACTION:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    .line 133
    new-instance v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    const-string v1, "STAR_RATING"

    const/16 v11, 0x9

    const-string v12, "starrating"

    invoke-direct {v0, v1, v11, v12, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->STAR_RATING:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    .line 135
    new-instance v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    const-string v1, "PRIVACY_INFORMATION_ICON_IMAGE_URL"

    const/16 v12, 0xa

    const-string v13, "privacyicon"

    invoke-direct {v0, v1, v12, v13, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->PRIVACY_INFORMATION_ICON_IMAGE_URL:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    .line 136
    new-instance v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    const-string v1, "PRIVACY_INFORMATION_ICON_CLICKTHROUGH_URL"

    const/16 v13, 0xb

    const-string v14, "privacyclkurl"

    invoke-direct {v0, v1, v13, v14, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->PRIVACY_INFORMATION_ICON_CLICKTHROUGH_URL:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    .line 138
    new-instance v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    const-string v1, "SPONSORED"

    const/16 v14, 0xc

    const-string v15, "sponsored"

    invoke-direct {v0, v1, v14, v15, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->SPONSORED:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    .line 121
    sget-object v15, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->IMPRESSION_TRACKER:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    aput-object v15, v1, v2

    sget-object v15, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->CLICK_TRACKER:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    aput-object v15, v1, v4

    sget-object v4, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->TITLE:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    aput-object v4, v1, v3

    sget-object v3, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->TEXT:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    aput-object v3, v1, v5

    sget-object v3, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->MAIN_IMAGE:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    aput-object v3, v1, v6

    sget-object v3, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->ICON_IMAGE:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    aput-object v3, v1, v7

    sget-object v3, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->CLICK_DESTINATION:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    aput-object v3, v1, v8

    sget-object v3, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->FALLBACK:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    aput-object v3, v1, v9

    sget-object v3, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->CALL_TO_ACTION:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    aput-object v3, v1, v10

    sget-object v3, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->STAR_RATING:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    aput-object v3, v1, v11

    sget-object v3, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->PRIVACY_INFORMATION_ICON_IMAGE_URL:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    aput-object v3, v1, v12

    sget-object v3, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->PRIVACY_INFORMATION_ICON_CLICKTHROUGH_URL:Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    aput-object v3, v1, v13

    aput-object v0, v1, v14

    sput-object v1, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->$VALUES:[Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->requiredKeys:Ljava/util/Set;

    .line 165
    invoke-static {}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->values()[Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    move-result-object v0

    array-length v1, v0

    :goto_e5
    if-ge v2, v1, :cond_f7

    aget-object v3, v0, v2

    .line 166
    iget-boolean v4, v3, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->required:Z

    if-eqz v4, :cond_f4

    .line 167
    sget-object v4, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->requiredKeys:Ljava/util/Set;

    iget-object v3, v3, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->name:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_f4
    add-int/lit8 v2, v2, 0x1

    goto :goto_e5

    :cond_f7
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 145
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->name:Ljava/lang/String;

    .line 146
    iput-boolean p4, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->required:Z

    return-void
.end method

.method static from(Ljava/lang/String;)Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;
    .registers 6

    .line 151
    invoke-static {}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->values()[Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 152
    iget-object v4, v3, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;
    .registers 2

    .line 121
    const-class v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    return-object p0
.end method

.method public static values()[Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;
    .registers 1

    .line 121
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->$VALUES:[Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    invoke-virtual {v0}, [Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    return-object v0
.end method
