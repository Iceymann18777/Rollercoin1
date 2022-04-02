.class public Lcom/appsgeyser/sdk/configuration/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;
    }
.end annotation


# static fields
.field private static fullScreenDelay:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static setFullScreenDelay(J)V
    .registers 2

    .line 85
    sput-wide p0, Lcom/appsgeyser/sdk/configuration/Constants;->fullScreenDelay:J

    return-void
.end method
