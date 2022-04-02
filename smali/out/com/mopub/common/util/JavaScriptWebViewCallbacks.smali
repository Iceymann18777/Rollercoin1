.class public final enum Lcom/mopub/common/util/JavaScriptWebViewCallbacks;
.super Ljava/lang/Enum;
.source "JavaScriptWebViewCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/util/JavaScriptWebViewCallbacks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

.field public static final enum WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

.field public static final enum WEB_VIEW_DID_CLOSE:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;


# instance fields
.field private mJavascript:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 10
    new-instance v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    const-string v1, "WEB_VIEW_DID_APPEAR"

    const/4 v2, 0x0

    const-string v3, "webviewDidAppear();"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    .line 11
    new-instance v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    const-string v1, "WEB_VIEW_DID_CLOSE"

    const/4 v3, 0x1

    const-string v4, "webviewDidClose();"

    invoke-direct {v0, v1, v3, v4}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_CLOSE:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    .line 7
    sget-object v4, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->$VALUES:[Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->mJavascript:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/util/JavaScriptWebViewCallbacks;
    .registers 2

    .line 7
    const-class v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/util/JavaScriptWebViewCallbacks;
    .registers 1

    .line 7
    sget-object v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->$VALUES:[Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v0}, [Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    return-object v0
.end method


# virtual methods
.method public getJavascript()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->mJavascript:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->mJavascript:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
