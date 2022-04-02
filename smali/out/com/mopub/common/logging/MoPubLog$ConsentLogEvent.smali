.class public final enum Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;
.super Ljava/lang/Enum;
.source "MoPubLog.java"

# interfaces
.implements Lcom/mopub/common/logging/MoPubLog$MPLogEventType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/logging/MoPubLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConsentLogEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;",
        ">;",
        "Lcom/mopub/common/logging/MoPubLog$MPLogEventType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum SHOULD_SHOW_DIALOG:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum SYNC_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum SYNC_COMPLETED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum SYNC_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum UPDATED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;


# instance fields
.field private mLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

.field private mMessageFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 455
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "SYNC_ATTEMPTED"

    const/4 v3, 0x0

    const-string v4, "Consent attempting to synchronize state"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 459
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "SYNC_COMPLETED"

    const/4 v4, 0x1

    const-string v5, "Consent synchronization completed: {0}"

    invoke-direct {v0, v2, v4, v1, v5}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_COMPLETED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 464
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "SYNC_FAILED"

    const/4 v5, 0x2

    const-string v6, "Consent synchronization failed: ({0}) {1}"

    invoke-direct {v0, v2, v5, v1, v6}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 471
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "UPDATED"

    const/4 v6, 0x3

    const-string v7, "Consent changed from {0} to {1}: PII {2} be collected. Reason: {3}"

    invoke-direct {v0, v2, v6, v1, v7}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->UPDATED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 475
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "SHOULD_SHOW_DIALOG"

    const/4 v7, 0x4

    const-string v8, "Consent dialog should be shown"

    invoke-direct {v0, v2, v7, v1, v8}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOULD_SHOW_DIALOG:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 479
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "LOAD_ATTEMPTED"

    const/4 v8, 0x5

    const-string v9, "Consent attempting to load dialog"

    invoke-direct {v0, v2, v8, v1, v9}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 483
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "LOAD_SUCCESS"

    const/4 v9, 0x6

    const-string v10, "Consent dialog loaded"

    invoke-direct {v0, v2, v9, v1, v10}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 488
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "LOAD_FAILED"

    const/4 v10, 0x7

    const-string v11, "Consent dialog failed: ({0}) {1}"

    invoke-direct {v0, v2, v10, v1, v11}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 492
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "SHOW_ATTEMPTED"

    const/16 v11, 0x8

    const-string v12, "Consent dialog attempting to show"

    invoke-direct {v0, v2, v11, v1, v12}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 496
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "SHOW_SUCCESS"

    const/16 v12, 0x9

    const-string v13, "Consent successfully showed dialog"

    invoke-direct {v0, v2, v12, v1, v13}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 501
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "SHOW_FAILED"

    const/16 v13, 0xa

    const-string v14, "Consent dialog failed to show: ({0}) {1}"

    invoke-direct {v0, v2, v13, v1, v14}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 505
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "CUSTOM"

    const/16 v14, 0xb

    const-string v15, "Consent Log - {0}"

    invoke-direct {v0, v2, v14, v1, v15}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 510
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "CUSTOM_WITH_THROWABLE"

    const/16 v15, 0xc

    const-string v14, "Consent Log With Throwable - {0}, {1}"

    invoke-direct {v0, v2, v15, v1, v14}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 451
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_COMPLETED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->UPDATED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOULD_SHOW_DIALOG:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    aput-object v2, v1, v7

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    aput-object v2, v1, v8

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    aput-object v2, v1, v9

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    aput-object v2, v1, v10

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    aput-object v2, v1, v11

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    aput-object v2, v1, v12

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    aput-object v2, v1, v13

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->$VALUES:[Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/common/logging/MoPubLog$LogLevel;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 515
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 516
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 517
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 519
    iput-object p3, p0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->mLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    .line 520
    iput-object p4, p0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->mMessageFormat:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;
    .registers 2

    .line 451
    const-class v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;
    .registers 1

    .line 451
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->$VALUES:[Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    invoke-virtual {v0}, [Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    return-object v0
.end method


# virtual methods
.method public getLogLevel()Lcom/mopub/common/logging/MoPubLog$LogLevel;
    .registers 2

    .line 538
    iget-object v0, p0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->mLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    return-object v0
.end method

.method public varargs getMessage([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 526
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->UPDATED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    if-ne p0, v0, :cond_21

    if-eqz p1, :cond_21

    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_21

    .line 527
    aget-object v0, p1, v1

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1d

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "can"

    goto :goto_1f

    :cond_1d
    const-string v0, "cannot"

    :goto_1f
    aput-object v0, p1, v1

    .line 532
    :cond_21
    iget-object v0, p0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->mMessageFormat:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
