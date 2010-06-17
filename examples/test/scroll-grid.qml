/****************************************************************************
**
** Copyright (C) 2010 Nokia Corporation and/or its subsidiary(-ies).
** All rights reserved.
** Contact: Nokia Corporation (qt-info@nokia.com)
**
** This file is part of the Qt Components project on Qt Labs.
**
** No Commercial Usage
** This file contains pre-release code and may not be distributed.
** You may use this file in accordance with the terms and conditions contained
** in the Technology Preview License Agreement accompanying this package.
**
** GNU Lesser General Public License Usage
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 2.1 as published by the Free Software
** Foundation and appearing in the file LICENSE.LGPL included in the
** packaging of this file.  Please review the following information to
** ensure the GNU Lesser General Public License version 2.1 requirements
** will be met: http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
**
** If you have questions regarding the use of this file, please contact
** Nokia at qt-info@nokia.com.
**
****************************************************************************/

import Qt 4.7
import QtComponents 1.0

Item {
    width: 600;
    height: 600;

    ScrollGrid {
        id: scroll
        x: 10;
        y: 10;
        width: 430;
        height: 430;
    }

    Text {
        id: gotoText;
        anchors.top: gotoEntry.top;
        anchors.bottom: gotoEntry.bottom;
        anchors.left: scroll.left;
        text: "Make button visible:";
        verticalAlignment: Text.AlignVCenter;
    }

    Entry {
        id: gotoEntry;
        anchors.top: scroll.bottom;
        anchors.topMargin: 20;
        anchors.left: gotoText.right;
        anchors.leftMargin: 5;
        anchors.right: scroll.right;

        hint: "";
        onEnterPressed: scroll.ensureVisible(parseInt(text) -1);

    }

    Text {
        id: strideText;
        anchors.top: strideEntry.top;
        anchors.bottom: strideEntry.bottom;
        anchors.left: scroll.left;
        text: "Set max-stride:";
        verticalAlignment: Text.AlignVCenter;
    }

    Entry {
        id: strideEntry;
        anchors.top: gotoEntry.bottom;
        anchors.topMargin: 10;
        anchors.left: gotoEntry.left;
        anchors.right: gotoEntry.right;

        hint: "";
        onEnterPressed: scroll.maxstride = parseInt(text);
    }

}
