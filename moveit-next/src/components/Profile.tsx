import { useContext } from 'react';

import { ChallengesContext } from '../contexts/ChallengesContext';

import styles from '../styles/components/Profile.module.css';

export function Profile() {
  const { level } = useContext(ChallengesContext);

  return (
    <div className={styles.profileContainer}>
      <img src="https://github.com/luizAzevedo.png" alt="Luiz Fernando" />

      <div>
        <strong>Luiz Fernando</strong>
        <p>
          <img src="icons/level.svg" alt="Level"/>
          Level {level}</p>
      </div>
    </div>
  );
}
