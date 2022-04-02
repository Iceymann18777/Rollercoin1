.class public final enum Lcom/mopub/common/privacy/ConsentChangeReason;
.super Ljava/lang/Enum;
.source "ConsentChangeReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/privacy/ConsentChangeReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/privacy/ConsentChangeReason;

.field public static final enum DENIED_BY_DNT_ON:Lcom/mopub/common/privacy/ConsentChangeReason;

.field public static final enum DENIED_BY_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

.field public static final enum DENIED_BY_USER:Lcom/mopub/common/privacy/ConsentChangeReason;

.field public static final enum DNT_OFF:Lcom/mopub/common/privacy/ConsentChangeReason;

.field public static final enum GRANTED_BY_NOT_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

.field public static final enum GRANTED_BY_USER:Lcom/mopub/common/privacy/ConsentChangeReason;

.field public static final enum GRANTED_BY_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

.field public static final enum IFA_CHANGED:Lcom/mopub/common/privacy/ConsentChangeReason;

.field public static final enum REACQUIRE_BECAUSE_DNT_OFF:Lcom/mopub/common/privacy/ConsentChangeReason;

.field public static final enum REACQUIRE_BECAUSE_PRIVACY_POLICY:Lcom/mopub/common/privacy/ConsentChangeReason;

.field public static final enum REACQUIRE_BY_SERVER:Lcom/mopub/common/privacy/ConsentChangeReason;

.field public static final enum REACUIRE_BECAUSE_VENDOR_LIST:Lcom/mopub/common/privacy/ConsentChangeReason;

.field public static final enum REAQUIRE_BECAUSE_IAB_VENDOR_LIST:Lcom/mopub/common/privacy/ConsentChangeReason;

.field public static final enum REVOKED_BY_SERVER:Lcom/mopub/common/privacy/ConsentChangeReason;


# instance fields
.field private final mReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 10
    new-instance v0, Lcom/mopub/common/privacy/ConsentChangeReason;

    const-string v1, "GRANTED_BY_USER"

    const/4 v2, 0x0

    const-string v3, "Consent was explicitly granted by the user"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/privacy/ConsentChangeReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_USER:Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 11
    new-instance v0, Lcom/mopub/common/privacy/ConsentChangeReason;

    const-string v1, "GRANTED_BY_WHITELISTED_PUB"

    const/4 v3, 0x1

    const-string v4, "Consent was explicitly granted by a whitelisted publisher"

    invoke-direct {v0, v1, v3, v4}, Lcom/mopub/common/privacy/ConsentChangeReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 12
    new-instance v0, Lcom/mopub/common/privacy/ConsentChangeReason;

    const-string v1, "GRANTED_BY_NOT_WHITELISTED_PUB"

    const/4 v4, 0x2

    const-string v5, "Consent was explicitly granted by a publisher who is not whitelisted"

    invoke-direct {v0, v1, v4, v5}, Lcom/mopub/common/privacy/ConsentChangeReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_NOT_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 14
    new-instance v0, Lcom/mopub/common/privacy/ConsentChangeReason;

    const-string v1, "DENIED_BY_USER"

    const/4 v5, 0x3

    const-string v6, "Consent was explicitly denied by the user"

    invoke-direct {v0, v1, v5, v6}, Lcom/mopub/common/privacy/ConsentChangeReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->DENIED_BY_USER:Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 15
    new-instance v0, Lcom/mopub/common/privacy/ConsentChangeReason;

    const-string v1, "DENIED_BY_PUB"

    const/4 v6, 0x4

    const-string v7, "Consent was explicitly denied by the publisher"

    invoke-direct {v0, v1, v6, v7}, Lcom/mopub/common/privacy/ConsentChangeReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->DENIED_BY_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 16
    new-instance v0, Lcom/mopub/common/privacy/ConsentChangeReason;

    const-string v1, "DENIED_BY_DNT_ON"

    const/4 v7, 0x5

    const-string v8, "Limit ad tracking was enabled and consent implicitly denied by the user"

    invoke-direct {v0, v1, v7, v8}, Lcom/mopub/common/privacy/ConsentChangeReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->DENIED_BY_DNT_ON:Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 17
    new-instance v0, Lcom/mopub/common/privacy/ConsentChangeReason;

    const-string v1, "DNT_OFF"

    const/4 v8, 0x6

    const-string v9, "Limit ad tracking was disabled"

    invoke-direct {v0, v1, v8, v9}, Lcom/mopub/common/privacy/ConsentChangeReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->DNT_OFF:Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 18
    new-instance v0, Lcom/mopub/common/privacy/ConsentChangeReason;

    const-string v1, "REACQUIRE_BECAUSE_DNT_OFF"

    const/4 v9, 0x7

    const-string v10, "Consent needs to be reacquired because the user disabled limit ad tracking"

    invoke-direct {v0, v1, v9, v10}, Lcom/mopub/common/privacy/ConsentChangeReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->REACQUIRE_BECAUSE_DNT_OFF:Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 20
    new-instance v0, Lcom/mopub/common/privacy/ConsentChangeReason;

    const-string v1, "REACQUIRE_BECAUSE_PRIVACY_POLICY"

    const/16 v10, 0x8

    const-string v11, "Consent needs to be reacquired because the privacy policy has changed"

    invoke-direct {v0, v1, v10, v11}, Lcom/mopub/common/privacy/ConsentChangeReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->REACQUIRE_BECAUSE_PRIVACY_POLICY:Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 22
    new-instance v0, Lcom/mopub/common/privacy/ConsentChangeReason;

    const-string v1, "REACUIRE_BECAUSE_VENDOR_LIST"

    const/16 v11, 0x9

    const-string v12, "Consent needs to be reacquired because the vendor list has changed"

    invoke-direct {v0, v1, v11, v12}, Lcom/mopub/common/privacy/ConsentChangeReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->REACUIRE_BECAUSE_VENDOR_LIST:Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 24
    new-instance v0, Lcom/mopub/common/privacy/ConsentChangeReason;

    const-string v1, "REAQUIRE_BECAUSE_IAB_VENDOR_LIST"

    const/16 v12, 0xa

    const-string v13, "Consent needs to be reacquired because the IAB vendor list has changed"

    invoke-direct {v0, v1, v12, v13}, Lcom/mopub/common/privacy/ConsentChangeReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->REAQUIRE_BECAUSE_IAB_VENDOR_LIST:Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 26
    new-instance v0, Lcom/mopub/common/privacy/ConsentChangeReason;

    const-string v1, "REVOKED_BY_SERVER"

    const/16 v13, 0xb

    const-string v14, "Consent was revoked by the server"

    invoke-direct {v0, v1, v13, v14}, Lcom/mopub/common/privacy/ConsentChangeReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->REVOKED_BY_SERVER:Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 27
    new-instance v0, Lcom/mopub/common/privacy/ConsentChangeReason;

    const-string v1, "REACQUIRE_BY_SERVER"

    const/16 v14, 0xc

    const-string v15, "Server requires that consent needs to be reacquired"

    invoke-direct {v0, v1, v14, v15}, Lcom/mopub/common/privacy/ConsentChangeReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->REACQUIRE_BY_SERVER:Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 28
    new-instance v0, Lcom/mopub/common/privacy/ConsentChangeReason;

    const-string v1, "IFA_CHANGED"

    const/16 v15, 0xd

    const-string v14, "Consent needs to be reacquired because the IFA has changed"

    invoke-direct {v0, v1, v15, v14}, Lcom/mopub/common/privacy/ConsentChangeReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->IFA_CHANGED:Lcom/mopub/common/privacy/ConsentChangeReason;

    const/16 v1, 0xe

    new-array v1, v1, [Lcom/mopub/common/privacy/ConsentChangeReason;

    .line 9
    sget-object v14, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_USER:Lcom/mopub/common/privacy/ConsentChangeReason;

    aput-object v14, v1, v2

    sget-object v2, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_NOT_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mopub/common/privacy/ConsentChangeReason;->DENIED_BY_USER:Lcom/mopub/common/privacy/ConsentChangeReason;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mopub/common/privacy/ConsentChangeReason;->DENIED_BY_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mopub/common/privacy/ConsentChangeReason;->DENIED_BY_DNT_ON:Lcom/mopub/common/privacy/ConsentChangeReason;

    aput-object v2, v1, v7

    sget-object v2, Lcom/mopub/common/privacy/ConsentChangeReason;->DNT_OFF:Lcom/mopub/common/privacy/ConsentChangeReason;

    aput-object v2, v1, v8

    sget-object v2, Lcom/mopub/common/privacy/ConsentChangeReason;->REACQUIRE_BECAUSE_DNT_OFF:Lcom/mopub/common/privacy/ConsentChangeReason;

    aput-object v2, v1, v9

    sget-object v2, Lcom/mopub/common/privacy/ConsentChangeReason;->REACQUIRE_BECAUSE_PRIVACY_POLICY:Lcom/mopub/common/privacy/ConsentChangeReason;

    aput-object v2, v1, v10

    sget-object v2, Lcom/mopub/common/privacy/ConsentChangeReason;->REACUIRE_BECAUSE_VENDOR_LIST:Lcom/mopub/common/privacy/ConsentChangeReason;

    aput-object v2, v1, v11

    sget-object v2, Lcom/mopub/common/privacy/ConsentChangeReason;->REAQUIRE_BECAUSE_IAB_VENDOR_LIST:Lcom/mopub/common/privacy/ConsentChangeReason;

    aput-object v2, v1, v12

    sget-object v2, Lcom/mopub/common/privacy/ConsentChangeReason;->REVOKED_BY_SERVER:Lcom/mopub/common/privacy/ConsentChangeReason;

    aput-object v2, v1, v13

    sget-object v2, Lcom/mopub/common/privacy/ConsentChangeReason;->REACQUIRE_BY_SERVER:Lcom/mopub/common/privacy/ConsentChangeReason;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->$VALUES:[Lcom/mopub/common/privacy/ConsentChangeReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/mopub/common/privacy/ConsentChangeReason;->mReason:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentChangeReason;
    .registers 2

    .line 9
    const-class v0, Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/privacy/ConsentChangeReason;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/privacy/ConsentChangeReason;
    .registers 1

    .line 9
    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->$VALUES:[Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-virtual {v0}, [Lcom/mopub/common/privacy/ConsentChangeReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/privacy/ConsentChangeReason;

    return-object v0
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentChangeReason;->mReason:Ljava/lang/String;

    return-object v0
.end method
