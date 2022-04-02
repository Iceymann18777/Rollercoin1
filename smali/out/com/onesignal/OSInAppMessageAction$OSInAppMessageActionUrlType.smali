.class public final enum Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;
.super Ljava/lang/Enum;
.source "OSInAppMessageAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OSInAppMessageAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OSInAppMessageActionUrlType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

.field public static final enum BROWSER:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

.field public static final enum IN_APP_WEBVIEW:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

.field public static final enum REPLACE_CONTENT:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 152
    new-instance v0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    const-string v1, "IN_APP_WEBVIEW"

    const/4 v2, 0x0

    const-string v3, "webview"

    invoke-direct {v0, v1, v2, v3}, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->IN_APP_WEBVIEW:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    .line 155
    new-instance v0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    const-string v1, "BROWSER"

    const/4 v3, 0x1

    const-string v4, "browser"

    invoke-direct {v0, v1, v3, v4}, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->BROWSER:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    .line 158
    new-instance v0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    const-string v1, "REPLACE_CONTENT"

    const/4 v4, 0x2

    const-string v5, "replacement"

    invoke-direct {v0, v1, v4, v5}, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->REPLACE_CONTENT:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    .line 150
    sget-object v5, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->IN_APP_WEBVIEW:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->BROWSER:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->$VALUES:[Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

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

    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 163
    iput-object p3, p0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->text:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;
    .registers 6

    .line 172
    invoke-static {}, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->values()[Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 173
    iget-object v4, v3, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->text:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;
    .registers 2

    .line 150
    const-class v0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;
    .registers 1

    .line 150
    sget-object v0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->$VALUES:[Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    invoke-virtual {v0}, [Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->text:Ljava/lang/String;

    return-object v0
.end method
