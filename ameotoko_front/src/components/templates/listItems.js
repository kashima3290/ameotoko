import React from 'react';
import ListItem from '@material-ui/core/ListItem';
import ListItemIcon from '@material-ui/core/ListItemIcon';
import ListItemText from '@material-ui/core/ListItemText';
// import ListSubheader from '@material-ui/core/ListSubheader'; サブヘッダー
import WbSunnyIcon from '@material-ui/icons/WbSunny';
import MessageIcon from '@material-ui/icons/Message';

export const mainListItems = (
  <div>
    <ListItem button>
      <ListItemIcon>
        <WbSunnyIcon />
      </ListItemIcon>
      <ListItemText primary="天気" />
    </ListItem>
    <ListItem button>
      <ListItemIcon>
        <MessageIcon />
      </ListItemIcon>
      <ListItemText primary="LINE設定" />
    </ListItem>
  </div>
);

export const secondaryListItems = (
  <div>
    {/* <ListSubheader inset>Saved reports</ListSubheader>
    <ListItem button>
      <ListItemIcon>
        <AssignmentIcon />
      </ListItemIcon>
      <ListItemText primary="Current month" />
    </ListItem>
    <ListItem button>
      <ListItemIcon>
        <AssignmentIcon />
      </ListItemIcon>
      <ListItemText primary="Last quarter" />
    </ListItem>
    <ListItem button>
      <ListItemIcon>
        <AssignmentIcon />
      </ListItemIcon>
      <ListItemText primary="Year-end sale" />
    </ListItem> */}
  </div>
);