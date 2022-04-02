.class public final enum Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;
.super Ljava/lang/Enum;
.source "ExternalViewabilitySessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/ExternalViewabilitySessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewabilityVendor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

.field public static final enum ALL:Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

.field public static final enum AVID:Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

.field public static final enum MOAT:Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 32
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    const-string v1, "AVID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->AVID:Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    new-instance v0, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    const-string v1, "MOAT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->MOAT:Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    new-instance v0, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    const-string v1, "ALL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->ALL:Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    .line 31
    sget-object v5, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->AVID:Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    aput-object v5, v1, v2

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->MOAT:Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->$VALUES:[Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromKey(Ljava/lang/String;)Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;
    .registers 4

    .line 75
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_3e

    goto :goto_2b

    :pswitch_d
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p0, 0x2

    goto :goto_2c

    :pswitch_17
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p0, 0x1

    goto :goto_2c

    :pswitch_21
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p0, -0x1

    :goto_2c
    if-eqz p0, :cond_3a

    if-eq p0, v2, :cond_37

    if-eq p0, v1, :cond_34

    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_34
    sget-object p0, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->ALL:Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    return-object p0

    .line 81
    :cond_37
    sget-object p0, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->MOAT:Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    return-object p0

    .line 79
    :cond_3a
    sget-object p0, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->AVID:Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    return-object p0

    nop

    :pswitch_data_3e
    .packed-switch 0x31
        :pswitch_21
        :pswitch_17
        :pswitch_d
    .end packed-switch
.end method

.method public static getEnabledVendorKey()Ljava/lang/String;
    .registers 2

    .line 58
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result v0

    .line 59
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result v1

    if-eqz v0, :cond_f

    if-eqz v1, :cond_f

    const-string v0, "3"

    goto :goto_1b

    :cond_f
    if-eqz v0, :cond_14

    const-string v0, "1"

    goto :goto_1b

    :cond_14
    if-eqz v1, :cond_19

    const-string v0, "2"

    goto :goto_1b

    :cond_19
    const-string v0, "0"

    :goto_1b
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;
    .registers 2

    .line 31
    const-class v0, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;
    .registers 1

    .line 31
    sget-object v0, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->$VALUES:[Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    invoke-virtual {v0}, [Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    return-object v0
.end method


# virtual methods
.method public disable()V
    .registers 6

    .line 35
    sget-object v0, Lcom/mopub/common/ExternalViewabilitySessionManager$1;->$SwitchMap$com$mopub$common$ExternalViewabilitySessionManager$ViewabilityVendor:[I

    invoke-virtual {p0}, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_38

    const/4 v3, 0x2

    if-eq v0, v3, :cond_34

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2d

    .line 47
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to disable an invalid viewability vendor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 43
    :cond_2d
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->disable()V

    .line 44
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->disable()V

    goto :goto_3b

    .line 40
    :cond_34
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->disable()V

    goto :goto_3b

    .line 37
    :cond_38
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->disable()V

    .line 50
    :goto_3b
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabled viewability for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method
